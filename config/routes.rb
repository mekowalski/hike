Rails.application.routes.draw do
  root 'application#home'

  get '/auth/:provider/callback' => 'sessions#create'
end
