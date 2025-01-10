if ENV['ENABLE_CORS'] == 'true'
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3000'  # Your React app's origin
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :delete, :options, :head],
        credentials: true
    end
  end
end
