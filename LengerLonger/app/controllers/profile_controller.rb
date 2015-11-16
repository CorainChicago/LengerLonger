class ProfileController < ApplicationController
  before_filter :find_user

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id
    @profile.save
    redirect_to root_path 
  end

  def show
    
  end

  private
  def find_user
    @user =  User.find(session[:user_id])
  end
  def profile_params
    params.require(:profile).permit(:city, :fav_quote, :goal)
  end

end