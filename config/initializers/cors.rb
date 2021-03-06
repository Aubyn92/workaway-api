Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # origins 'http://localhost:8080', 'https://young-earth-41911.herokuapp.com/'
  origins '*'
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
