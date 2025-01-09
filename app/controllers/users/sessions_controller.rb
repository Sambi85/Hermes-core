class Users::SessionsController < Devise::SessionsController
  
  # Overrides the default behavior: after sign-in redirect path
  def after_sign_in_path_for(resource)
    Rails.logger.debug "FE_LANDING_URL: #{ENV['FE_LANDING_URL']}"
    puts "FE_LANDING_URL: #{ENV['FE_LANDING_URL']}"

    ENV['FE_LANDING_URL'] || 'http://localhost:4000'
  end
end
