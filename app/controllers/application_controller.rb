class ApplicationController < ActionController::Base
  
  before_action :authenticate_user!, unless: -> { request.format.json? } # Apply Devise authentication only for HTML requests (non-API calls)
  before_action :authenticate_api_user!, if: -> { request.format.json? } # Use token-based authentication only for API requests (JSON format)
  protect_from_forgery with: :null_session, if: -> { request.format.json? } # Disables CSRF protection for API requests
  protect_from_forgery with: :exception, unless: -> { request.format.json? } # Enables CSRF protection for non-JSON requests

  before_action :set_csrf_cookie, unless: -> { request.format.json? }  # Set CSRF cookie only for HTML requests

  private

  def authenticate_api_user!
    cookies['X-CSRF-Token'] = nil
    token = request['HTTP_AUTHORIZATION']&.split(' ')&.last
    decoded_token = JwtService.decode(token)

    if decoded_token
      @current_user = User.find(decoded_token['user_id'])
    else
      render json: { error: 'Unauthorized API user!' }, status: :unauthorized
    end
  end

  def set_csrf_cookie
    if user_signed_in?
      cookies['X-CSRF-Token'] = params[:authenticity_token]
    else
      cookies.delete('X-CSRF-Token')
    end
  end

end

