require 'bundler/setup'
require 'sinatra/base' 
require 'rack-flash'

require 'bundler/setup'
require 'sinatra/base' 
require 'rack-flash'

# set :database, "sqlite3:rachet.sqlire3"

# def enable (:sessions)
# use Rack::Flash, :sweep => true
# set :sessions => true

def current_user
if session[:users]
@current_user = User.find(session[:users])
end
end

 def get(signin)
    # session[:email].nil? ? nil : User.find(session[:email])
  end
  
  def display_one
    "1"
  end

# get '/email' do 
#   @users = User.alls
#   erb :home
# end
  get '/signin' do
  erb :home
end

get '/' do
  flash[:notice] = 'Welcome to the homepage'
end

def post(signup)

end

post '/sign_up' do 
     user = User.new(params[:email, :password])
     if user.save
     redirect '/'
     else
     redirect '/signin' 
   end
 end   

post '/some_form_submit_route' do
  flash[:alert] = "There was a problem with that."
end

post '/sign_in' do
  @user = User.where(params[:user]).first
  if @user && @user.password == params[:user][:password]
    flash[:notice] = "You've successfully signed in."
    session[:user_id] = @user.id
    redirect '/welcome'
  else
    flash[:alert] = "Sorry, that user doesn't exist. Feel free to sign up."
    redirect '/'
  end
end

post '/sign_in' do
  @user = User.where(email: params[:email]).first
  if @user && @user.password == params[:password]
    flash[:notice] = "You've successfully signed in."
    session[:user_id] = @user.id
    redirect '/welcome'
  else
    flash[:alert] = "Sorry, that user doesn't exist. Feel free to sign up."
    redirect '/'
  end
end