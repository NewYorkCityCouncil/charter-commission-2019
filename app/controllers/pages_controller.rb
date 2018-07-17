class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :meta_data  
  include Recaptcha::ClientHelper
  include Recaptcha::Verify
  require 'sendgrid-ruby'
  require 'base64'
  include SendGrid

  def main
    @page = "Home"
    #Hearings happening today
    @hearings = Hearing.where("date_of_hearing > ? AND date_of_hearing < ?", Time.now.beginning_of_day(), Time.now.end_of_day())
    @nextHearing = Hearing.where("date_of_hearing < ? AND date_of_hearing > ?",Time.now.end_of_day() + 5.days, Time.now).order(:date_of_hearing => "asc").first
  end

  def livestream
    @page = "Livestream Meeting"
  end

  def charter
    @page = "About"
  end

  def jobs
    @page = "Jobs"
    @jobs = Job.all.order(:order => "asc")
  end
  
  def members
    @page = "Commission Members"
    @members = Member.all.order(:order => "asc")
  end
  
  def staff
    @page = "Staff"
    @staff = Staff.all.order(:order => "asc")
  end
  
  def resources
    @page = "Resources"
  end

  def job
    @page = "Jobs - #{params[:position]}"
    @job = Job.find_by(:position => params[:position])
  end

  def contact
    @page = "Contact"
    @status = flash[:status].nil? ? flash[:status] : flash[:status].html_safe
    @new_comment = Comment.new
  end
  
  def submit_comment
    @new_comment = Comment.new(message_params)
    if @new_comment.address.nil? && @new_comment.cell.nil? && @new_comment.phone.nil?
      if @new_comment.valid?
        if verify_recaptcha
          flash[:status] = "Thanks for your comment!"
          @new_comment.save
          from = Email.new(email: 'no-reply@charter2019.nyc.gov')
          # to = Email.new(email: 'jchei@council.nyc.gov')
          to = Email.new(email: 'proposals@charter2019.nyc')
          subject = 'New message from Charter Revision Site'
          formatted_message = @new_comment.message.split("\r\n").join("</p><p>")
          if !@new_comment.comment_attachment.file.nil?
            content = Content.new(type: 'text/html', value: '<p><b class="underline">Sender:</b></p><p>'+@new_comment.name+' (Reply To: <a href="mailto:'+@new_comment.email+'">'+@new_comment.email+'</a>)</p><p><b style="text-decouration:underline;">From:</b></p><p>'+@new_comment.borough+'</p><p><b style="text-decouration:underline;">Uploaded file:</b></p><p><a href="'+ @new_comment.comment_attachment.url+'">Download here</a></p><p><b style="text-decouration:underline;">Message:</b></p><p>'+formatted_message+'</p>')
          else
            content = Content.new(type: 'text/html', value: '<p><b class="underline">Sender:</b></p><p>'+@new_comment.name+' (Reply To: <a href="mailto:'+@new_comment.email+'">'+@new_comment.email+'</a>)</p><p><b style="text-decouration:underline;">From:</b></p><p>'+@new_comment.borough+'</p><p><b style="text-decouration:underline;">Uploaded file:</b></p><p>Nothing was attached!</p><p><b style="text-decouration:underline>;">Message:</b></p><p>'+formatted_message+'</p>')
          end
          mail = Mail.new(from, subject, to, content)
          # Adding a BCC because not every email goes through to Council email
          mail.personalizations[0]["bcc"] = [{"email"=>"charter2019nyc@gmail.com"}]
          # mail.personalizations[0]["bcc"] = [{"email"=>"jc.nycc.122018@gmail.com"}]
          # if !@new_comment.comment_attachment.file.nil?
          #   attachment = Attachment.new
          #   attachment.content = Base64.strict_encode64(File.open(@new_comment.comment_attachment.current_path,'rb').read)
          #   attachment.filename = @new_comment.comment_attachment_identifier
          #   mail.attachments.push(attachment)
          # end
          sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
          response = sg.client.mail._('send').post(request_body: mail.to_json)
          puts response.status_code
          puts response.body
          puts response.headers
        else
          flash[:status] = "<ul style='padding-left:0;'><li><strong>Something went wrong with reCAPTCHA!</strong></li></ul><p><strong>Please try again.</strong></p>"
        end
      else #if not valid (mainly if file size of attachment exceeds 7mb)
        errors = "<ul style='padding-left:0;'>"
        @new_comment.errors.details[:comment_attachment].each do |error|
          error[:error].include?("7 MB") ? errors += "<li><strong>#{error[:error]}</strong><br><small>Please reduce the size of your attachment.<br><span style='text-decoration:underline;'>OR</span><br>Email your comment and attachment to <a href='mailto:send@charter2019.nyc.gov'>send@charter2019.nyc.gov</a>.</small></li>" : errors += "<li><strong>#{error[:error]}</strong></li>"
        end
        errors += verify_recaptcha ? "</ul><p><strong>Please try again.</strong></p>" : "<li><strong>Something went wrong with reCAPTCHA!</strong></li></ul><p><strong>Please try again.</strong></p>"
        flash[:status] = errors
      end
    end
    redirect_to contact_path
  end

  def hearings
    @page = "Hearings and Meetings"
    @upcoming_hearings = Hearing.where("date_of_hearing > ?", Time.now).order(date_of_hearing: :asc)
    @past_hearings = Hearing.where("date_of_hearing < ?", Time.now).order(date_of_hearing: :asc)
  end

  def hearing
    @hearing = Hearing.find_by(:date_of_hearing => params[:date_of_hearing].to_datetime)
    @page = @hearing.date_of_hearing.strftime("%A, %B %d, %Y")
  end

  def kiosk
    @page = "Upcoming Hearings"
    @hearings = Hearing.where("date_of_hearing > ?", Time.now).order(date_of_hearing: :asc)
  end

  # def archived
  #   @page = "Archived Hearings"
  #   @hearings = Hearing.where("date_of_hearing < ?", Time.now).order(date_of_hearing: :asc)
  # end

  def reports
    @page = "Reports"
    @reports = Report.all.order(:order => "asc")
  end

  def report
    @report = Report.find(params[:id])
    @page = "Reports - #{@report.title}"
  end

  def news
    @page = "News"
    @all_news = News.all
    @press_releases = News.where(:news_type => "press_release").order(:order => "asc")
    @news_articles = News.where(:news_type => "news_article").order(:order => "asc")
  end

  def news_article
    @page = "News - #{params[:title]}"
    @news_article = News.find_by(:order => params[:order])
  end

  def faqs
    @page = "Frequently Asked Quetsions"
  end

  def sitemap
    @static_pages = ['','members','resources','faqs','contacts','hearings','news','reports','livestream']

    @hearings = Hearing.all
    @news = News.all

    respond_to do |format|
      format.xml
    end
  end

  private
    def message_params
      params.require(:comment).permit(:email,:name,:message,:borough,:comment_attachment)
    end

    def meta_data
      @meta_description = "The New York City Charter is the city's constitution, creating the framework for our government. The 2019 Commission has a broad mandate to conduct a top-to-bottom review and will bring its recommendations to the public in November 2019."
      @meta_image_url = ""
      @meta_site_title = "Charter Revision Commission 2019"
    end
end