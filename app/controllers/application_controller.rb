require './config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
      enable :sessions
    set :session_secret, 'Survey_Moonkey'
  end

  get '/' do
  	@questions = Questions.all
    @users = User.all
    erb :index
  end

  post '/question' do
    new_questions = Questions.new(:user_id => params[:user_id], :message => params[:message])
    new_questions.save
    redirect ('/')
  end

  get '/login' do
  	erb :login
	end
	
	post '/login' do
		@user = user.find_by(:username => params[:username], :email => params[:email])
		session[:user_id] = @user.user_id
		redirect('/')
	end

  get '/users' do
    @users = User.all
    erb :users
  end

  post '/users' do
    new_user = User.new(:username => params[:username], :email => params[:email], :age => params[:agxe], :profile_pic => params[:profile_pic])
    new_user.save
    redirect ('/users')
  end

end

