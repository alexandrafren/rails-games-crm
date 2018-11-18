class SessionsController < ApplicationController
  #loads login page
  def new
    if session[:user_id]
      redirect_to '/games'
    end
  end

  #logs user in
  def create
    @user = User.find_by(name: params[:user][:name])
    return head(:forbidden) unless @user.authenticate(params[:user][:password])
    session[:user_id] = @user.id
    redirect_to '/games'
  end

  def destroy
    session.delete :user_id
    redirect_to '/login'
  end

end
