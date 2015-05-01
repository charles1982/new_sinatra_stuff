require 'sinatra'
require 'sinatra/activerecord'
require './models'

set :database, "sqlite3:rachet.sqlite3"

get '/' do 
	@users = User.all
	erb :home
end
	get '/signup' do
  erb :signup
end

post '/signup' do 
     user = User.new(params[:email, :password])
     if user.save
     redirect '/'
     else
     redirect '/signup' 
   end
 end         