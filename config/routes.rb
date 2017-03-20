Rails.application.routes.draw do
  # root 'application#home'
  root 'sessions#new'

  get '/signup' => 'sessions#new', :as => :signup
  get '/signin' => 'sessions#new'
  get '/auth/:provider/callback' => 'sessions#create'
  get '/signout' => 'sessions#destroy', :as => :signout

  resources :hikers

end
