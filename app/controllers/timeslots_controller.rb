class TimeslotsController < ApplicationController
  def index
    @salon = Salon.find(params[:id])
    puts @salon.inspect
    @timeslots = @salon.timeslots
    @available = @timeslots.select {|slot| slot.booked < slot.capacity}
    @unavailable = @timeslots.select {|slot| slot.booked >= slot.capacity}
  end

  def show
    @salon = Salon.find(params[:id])
    @date = params[:date]
    @timeslots = @salon.timeslots.select {|slot| slot.date.to_s == @date}
  end


end