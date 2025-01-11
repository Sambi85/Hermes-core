class ApplicationController < ActionController::Base
  
  before_action :authenticate_user!, unless: -> { request.format.json? } # Apply Devise authentication only for HTML requests (non-API calls)
  before_action :authenticate_api_user!, if: -> { request.format.json? } # Use token-based authentication only for API requests (JSON format)
  protect_from_forgery with: :null_session, if: -> { request.format.json? } # Disables CSRF protection for API requests
  protect_from_forgery with: :exception, unless: -> { request.format.json? } # Enables CSRF protection for non-JSON requests

  private

  def authenticate_api_user!
    token = request.headers['Authorization']&.split(' ')&.last
    decoded_token = JwtService.decode(token)

    if decoded_token
      @current_user = User.find(decoded_token['user_id'])
    else
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end
end

