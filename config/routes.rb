Rails.application.routes.draw do
  resources :tokens
  resources :restrooms
  resources :favorites
  resources :users
  resources :reviews

  get '/signup' => 'users#new'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/home' => 'users#home'

  #routes for omniauth
  get '/auth/facebook/callback' => 'sessions#omniauth'
  get '/auth/:provider/callback' => 'sessions#omniauth'
  # post '/login', to: 'auth#create'
  # post '/signup', to: 'users#create'
  # get '/profile', to: 'users#profile'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
