class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_hiker

  def home
    render 'layouts/application'
  end

  def current_hiker
    @current_hiker ||= Hiker.find(session[:hiker_id]) if session[:hiker_id]
  end

  def login_required
    if !logged_in?
      redirect_to root_path, :notice => "you must be logged in"
    end
  end

  def logged_in?
    !!current_hiker
  end
end
