class ServicesController < ApplicationController

  def show
    # get services for specified salon
    @services = Service.where(salon_id: params[:salon_id] )
  end

  def new
    #get salon id to prepare and save services accordingly
    @salonId = params[:id]
    # p "------------"
    # p @salonId
  end

  def create

    #doing it the lengthy way for now
    @service = Service.new(name: params[:serviceOne], price: params[:priceOne], salon_id: params[:id])
    @service.save

    @service2 = Service.new(name: params[:serviceTwo], price: params[:priceTwo], salon_id: params[:id])
    @service2.save

    @service3 = Service.new(name: params[:serviceThree], price: params[:priceThree], salon_id: params[:id])
    @service3.save

    @service4 = Service.new(name: params[:serviceFour], price: params[:priceFour], salon_id: params[:id])
    @service4.save

    @service5 = Service.new(name: params[:serviceFive], price: params[:priceFive], salon_id: params[:id])
    @service5.save

    puts "saving service price"

    redirect_to salon_path
  end

  def edit
    @service = Service.find(salon_id: params[:salon_id] )
  end

  def update
    @service = Service.find(salon_id: params[:salon_id] )
    @service.update(salon_id: params[:salon_id] )

    redirect_to salon_path
  end

  # def destroy
  # end

private

  def service_params
    params.require(:service).permit(:name, :price, :salon_id)

  end
end