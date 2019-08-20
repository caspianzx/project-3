class AppointmentsController < ApplicationController
  def index

  end

  def show
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