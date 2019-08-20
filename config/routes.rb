Rails.application.routes.draw do
  devise_for :salons
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'salons#index'
  get '/salons' => 'salons#index', as: 'salons'





  #CREATE SERVICES CONTROLLER
  get '/salons/:id/services/new' => 'service#new', as: 'new_service'
  post '/salons/:id/services/create' => 'service#create', as: 'create_service'
  get '/salons/:id/services/edit' => 'service#edit', as: 'edit_service'
  patch '/salons/:id/services/' => 'service#update'
  #REDIRECT TO...

  #PHOTOS TABLE SALON CONTROLLER
  get '/salons/:id/photos/new' => 'salons#newphoto', as: 'new_photo'
  post '/salons/:id/photos/create' => 'salons#newphoto', as: 'create_photo'




  #CREATE APPTS CONTROLLER
  #appts table
  get '/salons/:id/appointments' => 'appointments#show', as: 'appointments'
  get '/salons/:id/appointments/new' => 'appointments#new', as: 'new_appointment'
  post '/salons/:id/appointments/create' => 'appointments#create', as: 'create_appointment'

   #salon_details table (for public)
  get '/salons/:id/new' => 'salons#new', as: 'new_salon'
  post '/salons/:id/create' => 'salons#create', as: 'create_salon'
  #edit.html, salon_details model. new below
  get '/salons/:id/edit' => 'salons#edit', as: 'edit_salon'
  #show.html, auth only salons
  get '/salons/:id' => 'salons#show', as: 'salon'





  # post '/salons' => 'salons#create'

  # get '/salons/:id/edit' => 'salons#edit', as: 'edit_salon'
  # patch '/salons/:id' => 'salons#update'
  # delete '/salons/:id' => 'salons#destroy'







end