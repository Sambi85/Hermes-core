Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://localhost:4000'  # frontend's URL (adjust if needed)
    resource '*',
             headers: :any,
             methods: [:get, :post, :put, :delete, :options]
  end
end
