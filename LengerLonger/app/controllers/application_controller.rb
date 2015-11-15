class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_login_path_for(resource)
    profile_path(resource)
  end

  def after_user_new_path_for(resource)
    profile_path(resource)
  end


  def current_user
    @current_user ||=User.find_by(id:session[:user_id]) if session[:user_id]
  end

  def logged_in?
    session[:user_id].present?
  end

  def authorize
    redirect_to '/login' unless current_user
  end

  helper_method :authorize

end
