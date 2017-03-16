class SessionsController < ApplicationController
  def create
    auth = request.env['omniauth.auth']
    user = User.find_by_provider_and_uid(auth['provider'], auth['uid']) || User.create_with_omniauth(auth)
    session[:hiker_id] = hiker.id
    redirect_to root_url, :notice => "Signed in!"
    end
  end
end
