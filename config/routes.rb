Rails.application.routes.draw do
  devise_for :salons, controllers: { registrations: "registrations" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'salons#index'
  get '/salons' => 'salons#index', as: 'salons'
  get '/salons/search' => 'salons#search', as: 'search'

  #CREATE SERVICES CONTROLLER
  # get '/salons/:id/services' => 'services#show', as: 'service'

  get '/salons/:id/services/new' => 'services#new', as: 'new_service'
  post '/salons/:id/services/create' => 'services#create', as: 'create_service'
  get '/salons/:id/services/edit' => 'services#edit', as: 'edit_service'
  patch '/salons/:id/services' => 'services#update', as: 'update_service'
  #REDIRECT TO...

  #PHOTOS TABLE SALON CONTROLLER
  get '/salons/:id/photos' => 'salons#showphoto', as: 'photos'
  get '/salons/:id/photos/new' => 'salons#newphoto', as: 'new_photo'
  post '/salons/:id/photos/create' => 'salons#createphoto', as: 'create_photo'
  delete '/salons/:id/photos' => 'salons#destroyphoto', as: 'destroy_photo'

  #CREATE APPTS CONTROLLER
  #appts table
  get '/salons/:id/appointments' => 'appointments#show', as: 'appointments'
  get '/salons/:id/appointments/new' => 'appointments#new', as: 'new_appointment'
  post '/salons/:id/appointments/create' => 'appointments#create', as: 'create_appointment'
  get '/salons/:id/appointments/:appt_id/confirmation' => 'appointments#confirmation', as: 'confirm_appointment'
  get '/salons/:id/appointments/edit' => 'appointments#edit', as: 'edit_appointment'
  patch '/salons/:id/appointments' => 'appointments#update', as: 'update_appointment'
  delete '/salons/:id/appointments' => 'appointments#destroy', as: 'destroy_appointment'

   #salon_details table (for public)
  get '/salons/:id/new' => 'salons#new', as: 'new_salon'
  post '/salons/:id/create' => 'salons#create', as: 'create_salon'
  #edit.html, salon_details model. new below
  get '/salons/:id/edit' => 'salons#edit', as: 'edit_salon'
  patch '/salons/:id' => 'salons#update', as: 'update_salon'
  #show.html, auth only salons
  get '/salons/:id' => 'salons#show', as: 'salon'


  get '/salons/:id/ratings/submit' => 'salons#newrating', as: 'new_rating'
  post '/salons/:id/ratings/create' => 'salons#createrating', as: 'create_rating'
  get '/salons/:id/ratings' => 'salons#showreview', as: 'review'
  # post '/salons' => 'salons#create'

  # get '/salons/:id/edit' => 'salons#edit', as: 'edit_salon'
  # patch '/salons/:id' => 'salons#update'
  # delete '/salons/:id' => 'salons#destroy'
end