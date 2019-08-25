class ServicesController < ApplicationController

  before_action :authenticate_salon!, :except => [ :show]

  def show
    # get services for specified salon
    @services = Service.where(salon_id: params[:id] ).order("id ASC")
    puts "showing services for salon"
    puts params[:id]
    puts params.inspect
  end

  def new
    #get salon id to prepare and save services accordingly
    @salonId = params[:id]
    # p "------------"
    # p @salonId
    if current_salon
      @c_salon = current_salon
      @detail = @c_salon.detail
    end
  end

  def create
    @service = Service.new(service_params)
    @service.salon_id = params[:id]

    p "------"
    p @service

    if @service.save
      puts 'worked'
      redirect_to salon_path
    else
      puts 'try again'
    redirect_to salon_path
    end
  end

  def edit
    #@salon = Salon.find(params[:id])
    @salonId = params[:id]
    @services = Service.where(salon_id: params[:id] ).order("id ASC")
    puts "edit services"
    puts @services

    if current_salon
      @c_salon = current_salon
      @detail = @c_salon.detail
    end
  end

  def update
    puts "saving new edits"

    @services = Service.where(salon_id: params[:id] )
    p @services

    @services.each_with_index do |service, index|
      priceName = "price" + index.to_s
      p "--------"
      p params[priceName]
      service.update(price: params[priceName] )
    end
    redirect_to service_path
  end

  # def destroy
  # end

  private

  def service_params
    params.require(:service).permit(:name, :price, :salon_id)

  end
end