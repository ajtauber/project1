# == Route Map
#
#          Prefix Verb   URI Pattern                     Controller#Action
#         trestle        /admin                          Trestle::Engine
#            root GET    /                               session#new
#       customers GET    /customers(.:format)            customers#index
#                 POST   /customers(.:format)            customers#create
#    new_customer GET    /customers/new(.:format)        customers#new
#   edit_customer GET    /customers/:id/edit(.:format)   customers#edit
#        customer GET    /customers/:id(.:format)        customers#show
#                 PATCH  /customers/:id(.:format)        customers#update
#                 PUT    /customers/:id(.:format)        customers#update
#                 DELETE /customers/:id(.:format)        customers#destroy
#         tickets GET    /tickets(.:format)              tickets#index
#                 POST   /tickets(.:format)              tickets#create
#      new_ticket GET    /tickets/new(.:format)          tickets#new
#     edit_ticket GET    /tickets/:id/edit(.:format)     tickets#edit
#          ticket GET    /tickets/:id(.:format)          tickets#show
#                 PATCH  /tickets/:id(.:format)          tickets#update
#                 PUT    /tickets/:id(.:format)          tickets#update
#                 DELETE /tickets/:id(.:format)          tickets#destroy
#     instructors GET    /instructors(.:format)          instructors#index
#                 POST   /instructors(.:format)          instructors#create
#  new_instructor GET    /instructors/new(.:format)      instructors#new
# edit_instructor GET    /instructors/:id/edit(.:format) instructors#edit
#      instructor GET    /instructors/:id(.:format)      instructors#show
#                 PATCH  /instructors/:id(.:format)      instructors#update
#                 PUT    /instructors/:id(.:format)      instructors#update
#                 DELETE /instructors/:id(.:format)      instructors#destroy
#         resorts GET    /resorts(.:format)              resorts#index
#                 POST   /resorts(.:format)              resorts#create
#      new_resort GET    /resorts/new(.:format)          resorts#new
#     edit_resort GET    /resorts/:id/edit(.:format)     resorts#edit
#          resort GET    /resorts/:id(.:format)          resorts#show
#                 PATCH  /resorts/:id(.:format)          resorts#update
#                 PUT    /resorts/:id(.:format)          resorts#update
#                 DELETE /resorts/:id(.:format)          resorts#destroy
#           login GET    /login(.:format)                session#new
#                 POST   /login(.:format)                session#create
#                 DELETE /login(.:format)                session#destroy
#           about GET    /about(.:format)                pages#about
#                 GET    /tickets/:id(.:format)          tickets#index
#
# Routes for Trestle::Engine:
# tickets_admin_index GET    /tickets(.:format)          tickets_admin/admin#index
#                     POST   /tickets(.:format)          tickets_admin/admin#create
#   new_tickets_admin GET    /tickets/new(.:format)      tickets_admin/admin#new
#  edit_tickets_admin GET    /tickets/:id/edit(.:format) tickets_admin/admin#edit
#       tickets_admin GET    /tickets/:id(.:format)      tickets_admin/admin#show
#                     PATCH  /tickets/:id(.:format)      tickets_admin/admin#update
#                     PUT    /tickets/:id(.:format)      tickets_admin/admin#update
#                     DELETE /tickets/:id(.:format)      tickets_admin/admin#destroy
#                root GET    /                           trestle/dashboard#index

Rails.application.routes.draw do
  root :to => 'pages#home'

  resources :customers, :except => [:edit]
  get '/customer/edit' => 'customers#edit', :as => :edit_customer

  resources :tickets
  resources :instructors
  resources :resorts
  ###### SESSION Routes ######
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'


  ###### About Controller#Action ######
  get '/about' => 'pages#about'


end
