# config/initializers/secure_headers.rb

SecureHeaders::Configuration.default do |config|
  config.csp = {
    default_src: ["'self'"],
    script_src: ["'self'", "'unsafe-inline'", "'unsafe-eval'"],
    style_src: ["'self'", "'unsafe-inline'"],
    img_src: ["'self'", "data:"],
    connect_src: ["'self'"],
    font_src: ["'self'"],
    object_src: ["'none'"],
    frame_ancestors: ["'none'"],
    base_uri: ["'self'"],
    form_action: ["'self'"],
  }

  # You can add other headers here (e.g., X-Content-Type-Options)
  config.x_content_type_options = "nosniff"
  config.x_frame_options = "DENY"
  config.x_xss_protection = "1; mode=block"
end
