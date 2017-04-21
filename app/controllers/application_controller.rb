class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_hiker

  def home
    render 'layouts/application'
  end

  def current_hiker
    @current_hiker ||= Hiker.find(session[:hiker_id]) if session[:hiker_id]
  end
end
