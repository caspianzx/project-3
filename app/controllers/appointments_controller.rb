class AppointmentsController < ApplicationController
  def index

  end

  def show
    @salon = Salon.find(params[:id])
    @appointments = @salon.appointments
  end

  def new
    @salon = Salon.find(params[:id])
    @services = @salon.services
  end

  def edit
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save
    if @appointment.save
      puts 'Booked!'
      redirect_to :controller => 'appointments', :action => 'show', :id => params[:id]
    else
      puts 'Booking failed!'
      redirect_to :controller => 'appointments', :action => 'new', :id => params[:id]
    end
  end

  def update
  end

  def destroy
  end

  def appointment_params
    params.require(:appointment).permit(:name, :phone, :email, :date, :timeslot, :service_id)
  end
end