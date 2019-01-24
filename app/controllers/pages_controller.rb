class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :meta_data, :next_hearing
  after_action :show_action 
  include Recaptcha::ClientHelper
  include Recaptcha::Verify
  require 'sendgrid-ruby'
  require 'base64'
  include SendGrid

  def main
    @page = "Home"
  end

  def livestream
    @page = "Livestream Meeting"
  end

  def about
    @page = "About"
  end

  def requests
    @page = "Record Requests"
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

  # def subscribe
  #   if params.has_key?("decline")
  #     puts "You declined"
  #     # cookies[:declined] = { :value => true, :expires => 1.week.from_new}
  #   elsif params.has_key?("approve")
  #     puts "You are subscribed"
  #     # cookies[:subscribed] = { :value => true, :expires => 1.year.from_now }
  #     # CREATE NEW ENTRY IN SUBSCRIBE DATABASE
  #   end
  # end

  # def unsubscribe
  #   puts "You are unsubscribed"
  #   # DELETE ENTRY IN DATABASE
  #   # Subscription.where("email_address = ?", #{insert email address})[0].destroy
  # end

  # # NEED METHOD FOR CSV EXPORT OF EMAIL ADDRESSES
  
  def submit_comment
    @new_comment = Comment.new(message_params)
    if @new_comment.address.nil? && @new_comment.cell.nil? && @new_comment.phone.nil?
      if @new_comment.valid?
        if verify_recaptcha
          flash[:status] = "Thanks for your comment!"
          @new_comment.save
          from = Email.new(email: 'no-reply@charter2019.nyc.gov')
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
    @upcoming_hearings = Hearing.where("date_of_hearing > ?", Time.now.in_time_zone("America/New_York").beginning_of_day).order(date_of_hearing: :asc)
    @past_hearings = Hearing.where("date_of_hearing < ?", Time.now.in_time_zone("America/New_York").beginning_of_day).order(date_of_hearing: :desc)
  end

  def hearing
    @hearing = Hearing.find_by(:id => params[:id])
    @page = @hearing.date_of_hearing.strftime("%A, %B %d, %Y")
  end

  def minutes
    @hearing = Hearing.find_by(:id => params[:id])
    @page = "#{@hearing.date_of_hearing.strftime("%A, %B %d, %Y")} Minutes"
  end

  def kiosk
    @page = "Upcoming Hearings"
    _today= Hearing.where("date_of_hearing > ?", Time.now.in_time_zone("America/New_York")).order(date_of_hearing: :asc)
  end

  # def archived
  #   @page = "Archived Hearings"
  #   _today= Hearing.where("date_of_hearing < ?", Time.now).order(date_of_hearing: :asc)
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
    @static_pages = ['','members','resources','faqs','contact','hearings','news','reports','livestream']

    _today= Hearing.all
    @news = News.all

    respond_to do |format|
      format.xml
    end
  end

  private
    def show_action
      puts params["action"]
    end
    
    def message_params
      params.require(:comment).permit(:email,:name,:message,:borough,:comment_attachment)
    end

    def meta_data
      @meta_description = "The New York City Charter is the city's constitution, creating the framework for our government. The 2019 Commission has a broad mandate to conduct a top-to-bottom review and will bring its recommendations to the public in November 2019."
      @meta_image_url = ""
      @meta_site_title = "Charter Revision Commission 2019"
    end

    def next_hearing
      @hearings_today = Hearing.where("date_of_hearing > ? AND date_of_hearing < ?", Time.now.in_time_zone("America/New_York").beginning_of_day(), Time.now.in_time_zone("America/New_York").end_of_day())
      @nextHearing = Hearing.where("date_of_hearing < ? AND date_of_hearing > ?",Time.now.in_time_zone("America/New_York").end_of_day() + 7.days, Time.now.in_time_zone("America/New_York")).order(:date_of_hearing => "asc").first
    end
end