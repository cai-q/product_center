class ApplicationAPI < Grape::API
  format :json

  mount Connection::WarmingUp
  add_swagger_documentation
end
