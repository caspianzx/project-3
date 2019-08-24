class SalonsController < ApplicationController

  before_action :authenticate_user!, :except => [ :index, :search, :newrating, :createrating, :showreview ]
  def index
    ##edit these conditions as you like
    @salons = Detail.all.select {|detail| detail.name.present? == true && detail.logo_url.present? == true}
    if current_salon
      @salon = current_salon
    end
  end

  def search
    puts 'IN SEARCH!!!!!!!!!!!!!!'
    @input = params[:search]
    # @services = Service.where(:name.downcase == @input)
    # @salonsService = Salon.all.select {|salon| salon.services.where(:name.downcase == @input.downcase)}
    # @services = Service.where("REPLACE(name.downcase, ' ', '') = REPLACE('#{@input}.downcase', ' ', '')")
    Service.where("REPLACE(LOWER(name), ' ', '') = REPLACE(LOWER('hair treatment'), ' ', '')")
    @services = Service.where("REPLACE(LOWER(name), ' ', '') = REPLACE(LOWER('#{@input}'), ' ', '')")
    puts @services.inspect
  end

  def show
    puts 'SHOWING'
    @salon = Salon.find(params[:id])

    @services = Service.where(salon_id: params[:id] ).order("id ASC")
    @appointments = @salon.appointments

    # puts @salon.photos.first.photo_url
    @photos = @salon.photos
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
    @details.salon_id = params[:id]
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



  def newrating
    @salon = Salon.find(params[:id])
    puts "see here"
    puts params[:id]
    puts @salon.inspect
    @services = @salon.services
  end

  def createrating
    @salonId = params[:id]

    @rating = Rating.new(rating_params)
    puts "rating saved"
    puts @rating.inspect
    @rating.salon_id = @salonId
    puts rating_params.inspect
    @rating.save
    redirect_to appointments_path
  end

  def showreview
    puts 'show reviews'
    @ratings = Rating.where(salon_id: params[:id])
    puts @ratings.inspect
  end

  private
  def photo_params
    params.require(:photo).permit(:photo_url, :id)
  end

  def detail_params
    params.require(:detail).permit(:name, :phone, :address, :area, :website, :logo_url)
  end

   def rating_params
    params.require(:rating).permit(:name, :email, :date_of_visit, :rating, :review, :service_id )
  end

end