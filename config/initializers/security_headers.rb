Rails.application.config.middleware.insert_before 0, Rack::Runtime
Rails.application.config.middleware.use Rack::Attack
Rails.application.config.action_dispatch.default_headers.merge!(
  'X-Content-Type-Options' => 'nosniff',
  'X-XSS-Protection' => '1; mode=block',
  'Strict-Transport-Security' => 'max-age=31536000; includeSubDomains',
  'Content-Security-Policy' => "default-src 'self'; script-src 'self'; style-src 'self';"
)
