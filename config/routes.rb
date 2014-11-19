Rails.application.routes.draw do

  root 'items#index'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  post '/create_history' => 'items#create_history'
  post '/edit_history' => 'items#edit_history'
  post '/create_history_from_buy' => 'items#create_history_from_buy'
  get '/delete_from_wishlist' => 'items#delete_from_wishlist'

  get '/items/category/mens/all' => 'items#cat_mens'
  get '/items/category/womens/all' => 'items#cat_womens'
  get '/items/category/:category' => 'items#category_all'

  get '/user/wishlist' => 'users#wishlist'
  get '/items/details/:id' => 'items#details', :as => 'item_details'
  resources :users
  resources :items
  resources :categories
end
