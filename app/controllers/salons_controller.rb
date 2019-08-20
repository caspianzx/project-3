class SalonsController < ApplicationController
  def index
    @salon = current_salon
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
    else
      puts 'try again'
    end

    redirect_to root_path

    # @song.user = current_user

    # if @detail.save
    #   # redirect_to @detail
    # else
    #   render 'new'
    # end
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