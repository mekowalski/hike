Rails.application.routes.draw do
  # root 'application#home'
  root 'hikers#new'

  get '/signup' => 'hikers#new', :as => 'signup'
  get '/signin' => 'sessions#new', :as => 'signin'
  get '/signout' => 'sessions#destroy', :as => 'signout'
  get '/auth/:provider/callback' => 'sessions#create'

  resources :hikers
  resources :sessions
end
