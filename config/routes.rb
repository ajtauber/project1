Rails.application.routes.draw do
  # root :to => 'pages#home'
  resources :customer, :only => [:new, :create, :update]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
