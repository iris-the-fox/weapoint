class ApplicationController < ActionController::Base
  before_action :ensure_login
  skip_before_action :ensure_login, only: [:show,:index]
  
  protect_from_forgery with: :exception, prepend: :true
  

  helper_method :logged_in?, :current_user

  def logged_in?
  	session[:user_id]
  end

  def current_user
  	@current_user ||= User.find(session[:user_id])
  end

  def ensure_login
  	redirect_to login_path unless session[:user_id]
  end
end
