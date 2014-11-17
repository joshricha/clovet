Rails.application.routes.draw do

  root 'items#index'

  resources :items

  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', :as => 'logout'

  get '/sign_up' => 'users#new'
  post '/sign_up' => 'users#create'

  post '/add_to_history' => 'items#add_to_history'

  

end
