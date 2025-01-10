class ApplicationController < ActionController::Base
  before_action :authenticate_user!, if: -> { request.format.json? }
  protect_from_forgery with: :null_session, if: -> { request.format.json? }  # disable CSRF protection for API requests

  private

  def skip_devise_authentication?
    request.format.json?
  end
end
