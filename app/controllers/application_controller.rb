require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base

# this helps connect our public and views directories
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do 
    erb :website
  end
  get '/website' do 
    erb :website
  end
  get '/games' do 
    erb :games
  end
  get '/videos' do 
    erb :videos
  end
get '/about' do 
    erb :about
  end
end
