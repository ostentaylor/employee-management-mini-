# this file is needed so that requests from the frontend can work

# config/initializers/cors.rb
# config/initializers/cors.rb



# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '172.21.191.159:3001' # Replace '*' with the origin of your frontend application
    resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
