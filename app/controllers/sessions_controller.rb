class SessionsController < ApplicationController
  def new
  end

#create is signing in the user but not giving notice,
#and gh auth is working but not stating the 'hello' part in the application
#also when gh auth does work, it just brings up the signin form
  # def create
  #   if auth = request.env['omniauth.auth']
  #     #sign in via gh
  #     request.env['omniauth.auth']
  #     if hiker = Hiker.find_by_provider_and_uid(auth['provider'], auth['uid']) || Hiker.create_with_omniauth(auth)
  #       session[:hiker_id] = hiker.id
  #       redirect_to adventures_url :notice => "You're signed in!"
  #     end
  #   else
  #     #regular sign via email/pw
  #     hiker = Hiker.find_by(email: params[:email])
  #     if hiker && hiker.authenticate(params[:password])
  #       session[:hiker_id] = hiker.id
  #       redirect_to adventures_url :notice => "You're signed in!"
  #     else
  #       render "new"
  #     end
  #   end
  #   # else
  #   #   auth = request.env['omniauth.auth']
  #   #   hiker = Hiker.find_by_provider_and_uid(auth['provider'], auth['uid']) || Hiker.create_with_omniauth(auth)
  #   #   session[:hiker_id] = hiker.id
  #   #   redirect_to adventures_url, :notice => "Signed in!"
  #   # end
  # end

  def create
    hiker = Hiker.find_by(email: params[:email])
    if hiker && hiker.authenticate(params[:password])
      session[:hiker_id] = hiker.id
      redirect_to adventures_url :notice => "You're signed in!"
    elsif
      render "new"
    else
      auth = request.env['omniauth.auth']
      hiker = Hiker.find_by_provider_and_uid(auth['provider'], auth['uid']) || Hiker.create_with_omniauth(auth)
      session[:hiker_id] = hiker.id
      redirect_to adventures_url, :notice => "Signed in!"
    end
  end

  def destroy
    session.delete(:hiker_id)
    redirect_to root_url :notice => "Signed out!"
  end
end
