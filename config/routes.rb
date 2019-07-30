Rails.application.routes.draw do
  get 'pages/home'
  root :to => 'pages#home'
  resources :customers, :only => [:new, :create, :update]
  get '/users/edit' => 'users#edit', :as => :edit_user
  
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
