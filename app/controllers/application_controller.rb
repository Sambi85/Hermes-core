class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :redirect_if_logged_in, only: [:new]

  private

  # Redirect logged-in users away from the login page
  def redirect_if_logged_in
    redirect_to (ENV['FE_LANDING_URL'] ||'http://localhost:4000') if user_signed_in?
  end
end
