class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create  
    current_user = User.find_by_email(params[:email])

    if current_user && user.authenticate(params[:password])
      session[:user_id] = current_user.id
      redirect_to root_path
    else
      flash[:notice] = "Email and password needs to match"
      redirect_to root_path
    end  
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end


end