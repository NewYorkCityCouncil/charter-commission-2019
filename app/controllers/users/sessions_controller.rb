# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :block_foreign_hosts, only:[:new, :create]
  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
  def block_foreign_hosts
    if ["205.247.140.193","66.65.23.247","127.0.0.1"].include?(request.remote_ip) then return false else redirect_to root_path end
  end
end
