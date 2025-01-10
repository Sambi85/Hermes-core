class ApplicationController < ActionController::Base
  before_action :authenticate_user!, if: -> { request.format.json? }

  private

  def skip_devise_authentication?
    request.format.json?
  end
end
