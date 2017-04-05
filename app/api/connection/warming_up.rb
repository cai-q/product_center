module Connection
  class WarmingUp < Grape::API
    version 'v1', using: :path
    format :json
    prefix 'connection'

    get 'hello' do
      {:hello => 'world'}
    end
  end
end
