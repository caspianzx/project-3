class SalonsController < ApplicationController
  def index
    if current_salon
      @salons = Salon.all
      @salon = current_salon
      puts @salon.detail.name
    end
  end

  def show

  end

  def new
  end

  def edit
  end

  def create
    @details = Detail.new(detail_params)
    @details.salon = current_salon
    @details.save
    puts @details
    if @details.save
      puts 'worked'
      redirect_to @details
    else
      puts 'try again'
      redirect_to 'new'
    end
  end

  def update
  end

  def destroy
  end

  private
  def detail_params
    params.require(:detail).permit(:name, :phone, :address, :area, :website, :logo_url)
  end

end