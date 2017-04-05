module Connection
  class WarmingUp < Grape::API
    prefix 'connection'

    get 'hello' do
      {:hello => 'world'}
    end
  end
end
