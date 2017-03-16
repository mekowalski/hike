Rails.application.routes.draw do
  root 'application#home'

  get '/auth/github/callback' => 'sessions#create'
end
