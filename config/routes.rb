Rails.application.routes.draw do

  root 'items#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  post '/create_history' => 'items#create_history'

  get '/items/category/mens/all' => 'items#cat_mens'
  get '/items/category/womens/all' => 'items#cat_womens'
  get '/items/category/:category' => 'items#category_all'

  resources :users
  resources :items
  resources :categories
end
