Rails.application.routes.draw do

  root 'items#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  post '/add_to_history' => 'items#add_to_history'

  get '/items/category/:category' => 'items#category'

  resources :users
  resources :items
end
