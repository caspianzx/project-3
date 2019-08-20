class SalonsController < ApplicationController
  def index
    @salons = Salon.all
    if current_salon
      @salon = current_salon
    end
  end

  def show
    puts 'SHOWING'
    @salon = Salon.find(params[:id])
  end

  def new
  end

  def edit
    @salon = Salon.find(params[:id])
    puts @salon.email
    @detail = Detail.where(salon: @salon).first
    puts @detail.phone
  end

  def create
    @details = Detail.new(detail_params)
    @details.salon = current_salon
    @details.save
    puts @details
    if @details.save
      puts 'worked'
      redirect_to salon_path
    else
      puts 'try again'
      redirect_to 'new'
    end
  end

  def update
    @salon = Salon.find(params[:id])
    @salon.detail.update(detail_params)
    redirect_to salon_path
  end

  def destroy
  end

  def newphoto
    @salon = Salon.find(params[:id])
  end

  def createphoto
    @salon = Salon.find(params[:id])
    # puts photo_params[:photo_url]
    @photo = Photo.new(photo_params)
    @photo.salon = @salon
    @photo.save
    if @photo.save
      puts 'worked'
      redirect_to photos_path
    else
      puts 'try again'
      redirect_to 'new_photo'
    end
  end

  def showphoto
    @salon = Salon.find(params[:id])
    # puts @salon.photos.first.photo_url
    @photos = @salon.photos
  end


  private
  def photo_params
    params.require(:photo).permit(:photo_url)
  end

  def detail_params
    params.require(:detail).permit(:name, :phone, :address, :area, :website, :logo_url)
  end

end