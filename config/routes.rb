Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'hair#index'
  get '/salons' => 'salons#index', as: 'salons'
  get '/salons/new' => 'salons#new', as: 'new_salon'
  post '/salons' => 'salons#create'
  get '/salons/:id' => 'salons#show', as: 'salon'
  get '/salons/:id/edit' => 'salons#edit', as: 'edit_salon'
  patch '/salons/:id' => 'salons#update'
  delete '/salons/:id' => 'salons#destroy'

  get '/salons/:id/bookings' => 'salons#showbooking' as: 'booking'
  get '/salons/:id/bookings/new' => 'salons#newbooking' as: 'new_booking'
  post '/salons/:id/bookings/new' => 'salons#createbooking' as: 'create_booking'
end