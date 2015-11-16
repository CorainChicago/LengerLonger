class ProfilesController < ApplicationController
  
  def new
    
  end


  def edit
   @profile = Profile.find_by(user_id: session[:user_id])
   @attributes = Profile.attribute_names - %w(id user_id created_at updated_at)
end
end