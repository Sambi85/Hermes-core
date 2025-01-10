Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4000'  # Frontend server address
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete],
      credentials: false
  end
end
