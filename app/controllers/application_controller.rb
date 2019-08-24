class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
  #stored_location_for(resource) || welcome_path
   id = current_salon.id.to_s
    puts 'checking sign in success'

    # stored_location_for(resource) || '/salons/'+id+'/new'

    #stored_location_for(resource) || '/salons/:id/new'
    '/salons/'+id
end
end