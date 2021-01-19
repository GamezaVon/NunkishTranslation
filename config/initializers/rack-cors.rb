# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) 
# in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cor
# config.middleware.use "Rack::Cors" do
#     allow do
#         origins '*'
#         resource '*', :headers => :any, :methods => [:get, :post, :delete, :put, :options]
#     end
# end
Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins 'localhost:8080'
        resource '*',
        headers: :any,
        methods: [:get, 
                :post, 
                :put, 
                :patch, 
                :delete, 
                :options, 
                :head]
    end
end