class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    id = current_salon.id.to_s
    # stored_location_for(resource) || '/salons/'+id+'/new'
    stored_location_for(resource) || '/salons/:id/new'

  end
end