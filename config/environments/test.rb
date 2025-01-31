require "active_support/core_ext/integer/time"

Rails.application.configure do

  config.cache_classes = false
  config.action_view.cache_template_loading = true
  config.eager_load = false
  config.public_file_server.enabled = true
  config.public_file_server.headers = {
    'Cache-Control' => "public, max-age=#{1.hour.to_i}"
  }

  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.cache_store = :null_store
  config.action_dispatch.show_exceptions = false
  config.action_controller.allow_forgery_protection = false
  config.active_storage.service = :test
  config.action_mailer.perform_caching = false
  config.action_mailer.delivery_method = :test
  config.active_support.deprecation = :stderr
  config.active_support.disallowed_deprecation = :raise
  config.active_support.disallowed_deprecation_warnings = []

  config.enable_chat_ui = (ENV['ENABLE_CHAT_UI'] == 'true') #UI for chat room debugging in browser

  # Action Cable
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present? # Serve static assets in production
  config.assets.paths << Rails.root.join("public", "build")
  config.assets.compile = true 
  
end
