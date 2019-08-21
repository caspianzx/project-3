class AppointmentsController < ApplicationController
  def index

  end

  def show
    @salon = Salon.find(params[:id])
    @services = Service.where(salon_id: params[:id] ).order("id ASC")
    @salon = Salon.find(params[:id])
    # puts @salon.photos.first.photo_url
    @photos = @salon.photos
    if current_salon
      @appointments = current_salon.id
    end
  end

  def new
  end

  def edit
  end

  def create
    puts appointment_params[:name]
    @appointment = Appointment.new(appointment_params)
    # @appointment.service = Service.find(appointment_params[:service_id])
    # if @appointment.save
    #   puts 'Booked!'
    #   puts @appointment
    #   redirect_to 'appointments'
    # else
    #   puts 'Booking failed!'
    #   redirect_to 'new_appointment'
    # end
  end

  def update
  end

  def destroy
  end

  def appointment_params
    params.require(:appointment).permit(:name, :phone, :email, :date, :timeslot, :service_id)
  end
end