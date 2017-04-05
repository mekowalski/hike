Rails.application.routes.draw do
  root 'application#home'
  # root 'hikers#new'
  # root 'adventures#index'

  get '/signup' => 'hikers#new', :as => 'signup'
  post '/hikers' => 'hikers#create'

  get '/signin' => 'sessions#new', :as => 'signin'
  post '/signin' => 'sessions#create'

  get '/signout' => 'sessions#destroy', :as => 'signout'
  get '/auth/:provider/callback' => 'sessions#create'

  resources :hikers do
    resources :treks
    resources :adventures
  end
  resources :sessions
end
