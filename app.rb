require 'sinatra/base'

class MyApp < Sinatra::Base
enable :sessions
get '/' do
  erb(:index)
end

post '/game_init' do
  @name= params[:name]
  session[:name]= @name
  redirect '/game_start'
end

get '/game_start' do
  @name= session[:name]
  erb(:game_start)
end

post '/game_set' do
  session[:answer]= ['Scissors', 'Rock', 'Paper'][rand(0..2)]
end

get '/game_play' do
  @name= session[:name]
  @answer= session[:answer]
  erb(:game_start)
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
