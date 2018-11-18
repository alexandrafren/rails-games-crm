class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def login
		if logged_in?
			redirect_to '/games'
		else
			render :'/users/login'
		end
	end

	def create
    user = User.new(user_params)
    user.save
    session[:user_id] = user.id
    redirect_to '/games'
	end

private
	def logged_in?
		session[:user_id]
	end

	def user_params
		params.require(:user).permit(:username, :password)
	end
end
