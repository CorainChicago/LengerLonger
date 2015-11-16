class ProfileController < ApplicationController
  before_filter :find_user

  def new
    @profile = Profile.new
  end

  def create
    current_user.
  end


  def edit
   @profile = Profile.find_by(user_id: session[:user_id])
   @attributes = Profile.attribute_names - %w(id user_id created_at updated_at)
  end

  private

  def find_user
    @user =  User.find(session[:user_id])
  end
end