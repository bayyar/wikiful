class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :get_categories

  private
  def get_categories
    @categories = Category.all.order(:category_name)
  end

  private
  def current_user
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
  	redirect_to login_path, alert: "You need to be logged in to do that" if current_user.nil?
  end

end
