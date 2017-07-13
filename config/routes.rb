Rails.application.routes.draw do
  root 'welcome#welcome'

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
  resources :adventures #redundant but works
  resources :treks, only: [:index, :show]
  resources :sessions
end
