require 'sinatra/base'

class BlogApi < Sinatra::Base

  get '/health' do
    { status: 'ok' }.to_json
  end

  get '/' do
    erb :index
  end

end