class TimeslotsController < ApplicationController
  def index
    @salon = Salon.find(params[:id])
    puts @salon.inspect
    @timeslots = @salon.timeslots
    @available = @timeslots.select {|slot| slot.booked < slot.capacity}
    @unavailable = @timeslots.select {|slot| slot.booked >= slot.capacity}
  end



end