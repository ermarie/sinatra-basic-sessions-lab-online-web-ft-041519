require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "sessionslab"
  end

  get "/" do
    erb :index
  end

  post "/checkout" do
    session[:item] = params[:item]

    erb :checkout
  end

end
