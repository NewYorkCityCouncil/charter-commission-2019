# frozen_string_literal: true

class Users::UnlocksController < Devise::UnlocksController
  before_action :block_foreign_hosts
  # GET /resource/unlock/new
  # def new
  #   super
  # end

  # POST /resource/unlock
  # def create
  #   super
  # end

  # GET /resource/unlock?unlock_token=abcdef
  # def show
  #   super
  # end

  # protected

  # The path used after sending unlock password instructions
  # def after_sending_unlock_instructions_path_for(resource)
  #   super(resource)
  # end

  # The path used after unlocking the resource
  # def after_unlock_path_for(resource)
  #   super(resource)
  # end
  def block_foreign_hosts
    redirect_to root_path
    if ["205.247.140.193", "127.0.0.1"].include?(request.remote_ip) then return false else redirect_to root_path end
  end
end
