require 'sinatra/base'

class HealthCheckApi < Sinatra::Base

  get '/' do
    { status: 'ok' }.to_json
  end

end