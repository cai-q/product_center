class ApplicationAPI < Grape::API
  format :json

  mount Connection::WarmingUp
end
