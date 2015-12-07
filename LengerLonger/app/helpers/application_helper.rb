module ApplicationHelper
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    session[:user_id] != nil
  end

  def user_profile
    @profile =  Profile.find_by(user_id: current_user.id)
  end
end
