class AppointmentsController < ApplicationController
  def index

  end

  def show
    @salon = Salon.find(params[:id])
    @appointments = @salon.appointments
    @services = Service.where(salon_id: params[:id] ).order("id ASC")
    # puts @salon.photos.first.photo_url
    @photos = @salon.photos
    @timeslots = @salon.timeslots
  end

  def new
    @salon = Salon.find(params[:id])
    @services = @salon.services
    puts 'YOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOooooo'
    # @timeslots = []
    # @salon.timeslots.each do |timeslot|
    #   @timeslots.push(timeslot.time)
    # end
    @timeslots = @salon.timeslots.select {|slot| slot.appointments == []}
    puts @timeslots.inspect
  end

  def edit
    puts params.inspect
    @salon = Salon.find(params[:salon_id])
    @services = @salon.services
    @appointment = Appointment.find(params[:appt_id])
    @timeslots = @salon.timeslots
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.save
    if @appointment.save
      puts 'Booked!'
      redirect_to :controller => 'appointments', :action => 'confirmation', :id => params[:id], appt_id: @appointment.id
    else
      puts 'Booking failed!'
      redirect_to :controller => 'appointments', :action => 'new', :id => params[:id]
    end
  end

  def confirmation
    @salon = Salon.find(params[:id])
    @appointment = Appointment.find(params[:appt_id])
  end

  def update
    @salon = Salon.find(params[:salon_id])
    @appointment = Appointment.find(params[:appt_id])
    @appointment.update(appointment_params)
    puts @appointment.inspect
    if @appointment.update(appointment_params)
      redirect_to appointments_path
    else
      redirect_to edit_appointments_path
    end
  end

  def destroy
    @salon = Salon.find(params[:salon_id])
    @appointment = Appointment.find(params[:appt_id])
    @appointment.destroy
    if @appointment.destroy
      puts 'WORKED'
    else
      puts 'DIDNT WORK'
    end
    redirect_to :controller => 'appointments', :action => 'show', :id => @salon.id
  end

  def appointment_params
    params.require(:appointment).permit(:name, :phone, :email, :date, :timeslot_id, :service_id)
  end
end