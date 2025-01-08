class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Or if you want to prevent already logged in users from seeing the login page:
  before_action :redirect_if_logged_in, only: [:new]

  private
  
  def redirect_if_logged_in
    redirect_to root_path if user_signed_in?
  end
end
