class ServicesController < ApplicationController

before_action :authenticate_user!, :except => [ :show]

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
  end

  def create
    @services = params[:serviceName]
    @prices = params[:prices]

    p "------"
    p @services
    p @prices

    @services.each_with_index do |service, index|
      p service
      indvPrice = @prices[index]
      p indvPrice
      @saveService = Service.new(name: service, price: indvPrice, salon_id: params[:id])
      @saveService.save
    end



    # lengthy way
    # @service = Service.new(name: params[:serviceOne], price: params[:priceOne], salon_id: params[:id])
    # @service.save

    # @service2 = Service.new(name: params[:serviceTwo], price: params[:priceTwo], salon_id: params[:id])
    # @service2.save

    # @service3 = Service.new(name: params[:serviceThree], price: params[:priceThree], salon_id: params[:id])
    # @service3.save

    # @service4 = Service.new(name: params[:serviceFour], price: params[:priceFour], salon_id: params[:id])
    # @service4.save

    # @service5 = Service.new(name: params[:serviceFive], price: params[:priceFive], salon_id: params[:id])
    # @service5.save

    # puts "saving service price"

    redirect_to salon_path
  end

  def edit
    #@salon = Salon.find(params[:id])
   @salonId = params[:id]
   @services = Service.where(salon_id: params[:id] ).order("id ASC")
    puts "edit services"
    puts @services
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