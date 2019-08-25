class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    id = current_salon.id.to_s
    puts 'checking register success'
    puts id.inspect
    puts @salon.id.inspect
    puts params

    # stored_location_for(resource) || '/salons/'+id+'/new'

    #stored_location_for(resource) || '/salons/:id/new'
    '/salons/'+id

  end
end