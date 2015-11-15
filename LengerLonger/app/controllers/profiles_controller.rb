class ProfilesController < ApplicationController
  def edit
   @profile = Profile.find(session[:user_id])
   @attributes = Profile.attribute_names - %w(id user_id created_at updated_at)
end
end