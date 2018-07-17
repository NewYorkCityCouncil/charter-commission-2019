# frozen_string_literal: true

class Users::PasswordsController < Devise::PasswordsController
  before_action :block_foreign_hosts
  # GET /resource/password/new
  # def new
  #   super
  # end

  # POST /resource/password
  # def create
  #   super
  # end

  # GET /resource/password/edit?reset_password_token=abcdef
  # def edit
  #   super
  # end

  # PUT /resource/password
  # def update
  #   super
  # end

  # protected

  # def after_resetting_password_path_for(resource)
  #   super(resource)
  # end

  # The path used after sending reset password instructions
  # def after_sending_reset_password_instructions_path_for(resource_name)
  #   super(resource_name)
  # end
  def block_foreign_hosts
    redirect_to root_path
    if ["205.247.140.193","66.65.23.247","127.0.0.1"].include?(request.remote_ip) then return false else redirect_to root_path end
  end
end
