Rails.application.routes.draw do

  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get 'secrets/new'
  get '/secret' => 'secrets#show'
  
end
