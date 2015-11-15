class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create  
    current_user = User.find_by(email: params[:user][:email])
    if current_user && current_user.authenticate(params[:user][:password])
      session[:user_id] = current_user.id
      redirect_to root_path
    else
      redirect_to users_new_path
    end  
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end


end