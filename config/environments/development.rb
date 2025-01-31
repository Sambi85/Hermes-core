require "active_support/core_ext/integer/time"

Rails.application.configure do

  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true

  if Rails.root.join('tmp', 'caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  config.active_storage.service = :local
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.perform_caching = false
  config.active_support.deprecation = :log
  config.active_support.disallowed_deprecation = :raise
  config.active_support.disallowed_deprecation_warnings = []
  config.active_record.migration_error = :page_load
  config.active_record.verbose_query_logs = true
  config.assets.debug = true
  config.assets.quiet = true
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker
  
  # CORS configuration for cookies
  config.action_dispatch.cookies_same_site_protection = :none


  config.enable_chat_ui = (ENV['ENABLE_CHAT_UI'] == 'true') #UI for chat room debugging in browser

  # Action Cable
  config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present? # Serve static assets in production
  config.assets.paths << Rails.root.join("public", "build")
  config.assets.compile = true
  config.action_cable.url = "ws://localhost:3000/cable"
end
