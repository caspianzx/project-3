class PhotosController < ApplicationController

  def new
    @salon = Salon.find(params[:id])
  end

  def create
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

  def show
    @salon = Salon.find(params[:id])
    # puts @salon.photos.first.photo_url
    @photos = @salon.photos
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    # puts @photo.photo_url
    @salon = Salon.find(params[:salon_id])
    # puts @salon.id
    @photo.destroy
    redirect_to :controller => 'photos', :action => 'show', :id => @salon.id
  end

  private
  def photo_params
    params.require(:photo).permit(:photo_url, :id)
  end
end