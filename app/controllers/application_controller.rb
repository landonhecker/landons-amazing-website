require './config/environment'
require './app/models/model'

class ApplicationController < Sinatra::Base

  account_sid = 'ACaa0a2ceb8411bb4aa9348dc3d00558f0'
  auth_token = '373c5b9d1d7c5bd7a9dc2cce087b0dcd'
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
  get '/text' do
    erb :text
  end
  
  post '/result' do
    @number = params[:number]
    @message = params[:message]

    @client = Twilio::REST::Client.new account_sid, auth_token 
 
    @client.account.messages.create({ 
        :to => @number,
        :body => @message, 
        :from => "+19283251586"
    })
    
    erb :result
end
  
end
