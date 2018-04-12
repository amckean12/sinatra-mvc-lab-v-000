require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do 
    @pigText =  PigLatinizer.new(params[:user_text])
    erb :results
  end 

end
