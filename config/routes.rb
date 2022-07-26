Rails.application.routes.draw do
  root :to => 'games#home'
  resources :users, :only => [:new, :create, :index]

  resources :reviews, :only => [:new, :create, :index]

  resources :games, :only => [:new, :create, :index, :home, :show]

  # Not in the database!
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
