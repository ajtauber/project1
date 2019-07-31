Rails.application.routes.draw do
  get 'resorts/index'
  get 'resorts/show'
  get 'resorts/new'
  root :to => 'pages#home'

  # Controller#Action
  resources :customers
  # get '/customer/edit' => 'users#edit', :as => :edit_customer

  resources :tickets
  resources :instructors
  resources :resorts
  ###### SESSION Routes ######
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  ###### About Controller#Action ######
  get '/about' => 'pages#about'

  get '/tickets' => 'tickets#index'

  # ##############################################

  #        runs GET    /runs(.:format)               runs#index
  #             POST   /runs(.:format)               runs#create
  #     new_run GET    /runs/new(.:format)           runs#new
  #    edit_run GET    /runs/:id/edit(.:format)      runs#edit
  #         run GET    /runs/:id(.:format)           runs#show
  #             PATCH  /runs/:id(.:format)           runs#update
  #             PUT    /runs/:id(.:format)           runs#update
  #             DELETE /runs/:id(.:format)           runs#destroy



#   Controller#Action
#    mountains GET    /mountains(.:format)          mountains#index
#              POST   /mountains(.:format)          mountains#create
# new_mountain GET    /mountains/new(.:format)      mountains#new
# edit_mountain GET    /mountains/:id/edit(.:format) mountains#edit
#     mountain GET    /mountains/:id(.:format)      mountains#show
#              PATCH  /mountains/:id(.:format)      mountains#update
#              PUT    /mountains/:id(.:format)      mountains#update
#              DELETE /mountains/:id(.:format)      mountains#destroy


  #
  # post '/update_user_mountains/:user_id' => 'users#update_mountains', as: 'update_user_mountains'
  #
  # post '/update_user_mountain_runs/:mountain_id' => 'mountains#update_runs', as: 'update_user_mountain_runs'

  ##### Summary of what is happening. Found in console with 'rails routes' #####


end
