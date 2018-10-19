# frozen_string_literal: true

class Users::ConfirmationsController < Devise::ConfirmationsController
  # before_action :block_foreign_hosts
  # GET /resource/confirmation/new
  # def new
  #   super
  # end

  # POST /resource/confirmation
  # def create
  #   super
  # end

  # GET /resource/confirmation?confirmation_token=abcdef
  # def show
  #   super
  # end

  # protected

  # The path used after resending confirmation instructions.
  # def after_resending_confirmation_instructions_path_for(resource_name)
  #   super(resource_name)
  # end

  # The path used after confirmation.
  # def after_confirmation_path_for(resource_name, resource)
  #   super(resource_name, resource)
  # end
  def block_foreign_hosts
    redirect_to root_path
    if ["205.247.140.193","66.65.23.247","127.0.0.1"].include?(request.remote_ip) then return false else redirect_to root_path end
  end
end
