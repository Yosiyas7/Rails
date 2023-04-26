Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:index, :new, :create]
  resources :players
  resources :teams
  resources :managers
  resources :home
 

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  root 'teams#index'
end
