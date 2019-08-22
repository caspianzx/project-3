class TimeslotsController < ApplicationController
  def index
    @salon = Salon.find(params[:id])
    puts @salon.inspect
    @timeslots = @salon.timeslots
  end



end