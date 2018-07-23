class AdminsController < ApplicationController
  before_action :find_comment, only: [:message,:update_message, :delete_message]
  before_action :find_staff, only: [:staff,:update_staff, :delete_staff]
  before_action :find_member, only: [:member,:update_member, :delete_member]
  before_action :find_job, only: [:job,:update_job, :delete_job]
  before_action :find_hearing, only: [:hearing,:update_hearing, :delete_hearing]
  before_action :find_news, only: [:news,:update_news, :delete_news]
  before_action :find_report, only: [:report,:update_report, :delete_report]
  before_action :authenticate_user!, :set_time_zone, :block_foreign_hosts,:page_title

  def index
  end

  def admin_users
    @users = User.all
  end

  def delete_user
    @user = User.find(params[:id])
    @user.delete
    redirect_to manage_users_path
  end

  # Comments, Feedback, and Messages
  def all_messages
    @comments = Comment.all.order(created_at: :asc)
  end

  def message
  end

  def update_message
    @comment.update_attributes(message_params)
    redirect_to admin_messages_path
  end

  def delete_message
    @comment.destroy
    redirect_to admin_messages_path
  end

  def generate_message_report
    @comments = Comment.all

    respond_to do |format|
      format.csv { send_data @comments.to_csv, filename: "comments_#{Time.now.strftime("%m-%d-%Y_%I:%M:%S %Z")}.csv" }
    end
  end

  # Staff Members
  def all_staff
    @staff_members = Staff.all.order(id: :asc)
  end

  def staff
    @max = Staff.all.length - 1
  end

  def new_staff
    @staff = Staff.new
  end

  def create_staff
    @staff = Staff.create(staff_params)
    redirect_to admin_staff_path
  end

  def update_staff
    @staff.update_attributes(staff_params)
    redirect_to admin_staff_path
  end

  def delete_staff
    @staff.destroy
    redirect_to admin_staff_path
  end

  # Commission Members
  def all_members
    @members = Member.all.order(id: :asc)
  end

  def member
    @max = Member.all.length - 1
  end

  def new_member
    @member = Member.new
  end

  def create_member
    @member = Member.create(member_params)
    redirect_to admin_members_path
  end

  def update_member
    @member.update_attributes(member_params)
    redirect_to admin_members_path
  end

  def delete_member
    @member.destroy
    redirect_to admin_members_path
  end

  # Job Opportunities
  def all_jobs
    @jobs = Job.all.order(id: :asc)
  end

  def job
    @max = Job.all.length - 1
  end

  def new_job
    @job = Job.new
  end

  def create_job
    @job = Job.create(job_params)
    redirect_to admin_jobs_path
  end

  def update_job
    @job.update_attributes(job_params)
    redirect_to admin_jobs_path
  end

  def delete_job
    @job.destroy
    redirect_to admin_jobs_path
  end

  # Hearings
  def all_hearings
    @hearings = Hearing.all.order(date_of_hearing: :asc)
  end

  def hearing
  end

  def new_hearing
    @hearing = Hearing.new
  end

  def create_hearing
    @hearing = Hearing.create(hearing_params)
    redirect_to admin_hearings_path
  end

  def update_hearing
    @hearing.update_attributes(hearing_params)
    redirect_to admin_hearings_path
  end

  def delete_hearing
    @hearing.destroy
    redirect_to admin_hearings_path
  end

  # News
  def all_news
    @all_news = News.all.order(id: :asc)
  end

  def news
    @max = News.all.length - 1
  end

  def new_news
    @news = News.new
  end

  def create_news
    @news = News.create(news_params)
    redirect_to admin_news_path
  end

  def update_news
    @news.update_attributes(news_params)
    redirect_to admin_news_path
  end

  def delete_news
    @news.destroy
    redirect_to admin_news_path
  end

  # Reports
  def all_reports
    @reports = Report.all.order(id: :asc)
  end

  def report
    @max = Report.all.length - 1
  end

  def new_report
    @report = Report.new
  end

  def create_report
    @report = Report.create(report_params)
    redirect_to admin_reports_path
  end

  def update_report
    @report.update_attributes(report_params)
    redirect_to admin_reports_path
  end

  def delete_report
    @report.destroy
    redirect_to admin_reports_path
  end

  # Admin
  def create_new_admin_user
    @user = User.new
  end

  def save_new_admin_user
    @user = User.create(user_params)
  end

  private
    def page_title
      @page = "Admin"
      @meta_site_title = "Charter Revision Commission 2019"
    end

    def block_foreign_hosts
      if ["205.247.140.193","66.65.23.247","127.0.0.1"].include?(request.remote_ip) then return false else redirect_to root_path end
    end

    def set_time_zone
      Time.zone = 'Eastern Time (US & Canada)'
    end

    def find_comment
      @comment = Comment.find(params[:id])
    end

    def message_params
      params.require(:comment).permit(:email,:name,:message)
    end

    def find_staff
      @staff = Staff.find(params[:id])
    end
    
    def staff_params
      params.require(:staff).permit(:name,:role,:bio,:image_url,:order,:profile_pic)
    end

    def find_member
      @member = Member.find(params[:id])
    end

    def member_params
      params.require(:member).permit(:name,:appointer,:background,:role,:bio,:image_url,:order,:profile_pic)
    end

    def find_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:position,:number_of_positions,:open_date,:close_date,:duties_and_responsibilities,:responsibilities,:requirements,:attention,:council_url)
    end

    def find_hearing
      @hearing = Hearing.find(params[:id])
    end

    def hearing_params
      params.require(:hearing).permit(:date_of_hearing,:location_of_hearing,:address_1,:address_2,:city,:zip_code,:google_maps_url,:transcript_url,:youtube_url,:livestream_embed,:hearing_content,:minutes,{hearing_attachments: []})
    end

    def find_news
      @news = News.find(params[:id])
    end

    def news_params
      params.require(:news).permit(:title,:publication_date,:publication,:contact_info,:news_content,:order,:news_type,{news_attachments: []})
    end

    def find_report
      @report = Report.find(params[:id])
    end

    def report_params
      params.require(:report).permit(:title,:language,:file_url,:month,:order,{report_attachments: []})
    end

    def user_params
      params.require(:user).permit(:email,:password,:password_confirmation)
    end
end
