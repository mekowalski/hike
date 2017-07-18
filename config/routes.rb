Rails.application.routes.draw do
  root 'welcome#welcome'

  get '/signup' => 'hikers#new', :as => 'signup'
  post '/hikers' => 'hikers#create'

  get '/signin' => 'sessions#new', :as => 'signin'
  post '/signin' => 'sessions#create'

  get '/signout' => 'sessions#destroy', :as => 'signout'
  get '/auth/:provider/callback' => 'sessions#create'

  resources :hikers

  resources :adventures do
    resources :treks, only: [:index, :new, :create, :show]
  end

  resources :sessions
end
