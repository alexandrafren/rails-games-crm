class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
	end

	def new
	end

	def create
		user = User.create(user_params)
		session[:user_id] = user.id
		binding.pry
    redirect_to '/games'
	end

private
	def logged_in?
		session[:user_id]
	end

	def user_params
		params.require(:user).permit(:name, :password, :password_confirmation)
	end
end
