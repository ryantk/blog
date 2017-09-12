require 'sinatra/base'

class BlogApi < Sinatra::Base

  get '/' do
    erb :index
  end

end