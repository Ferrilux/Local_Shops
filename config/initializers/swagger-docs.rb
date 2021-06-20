# config/initializers/swagger-docs.rb
#Swagger::Docs::Config.base_api_controller = ActionController::API
Swagger::Docs::Config.register_apis({
  "1.0" => {
    :api_file_path => "public/",
    :base_path => "http://localhost:3000",
    :clean_directory => true,
    :parent_controller => ApplicationController,
    :attributes => {
      :info => {
        "title" => "Local shop",
        "description" => "Online shop where you can buy local products"
      }
    }
  }
})



