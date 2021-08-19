require_relative 'config/environment'

class App < Sinatra::Base
    configure do 
        enable :sessions
        set :session_secret, "285a7acae76ed30876e43deff65e0df54b8e99f6c52ede86df50efdb7d4c089ba335122b5e846c37021df9c0ba37e1e6a106673d1e64e2a0561dcdacc18f3c2d"
    end

    get '/' do 
        erb :index
    end

    post '/checkout' do 
        session[:item] = params[:item]
        @session = session
        erb :checkout
    end
end