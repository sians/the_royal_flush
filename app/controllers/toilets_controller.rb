class ToiletsController < ApplicationController
  before_action :fetch_toilet, only: %i[show destroy edit]

  def index
    if params[:query]
      @toilets = policy_scope(Toilet).near(params[:query], 100)
    else
      @toilets = policy_scope(Toilet)
    end
    @markers = @toilets.map do |toilet|
      {
        lat: toilet.latitude,
        lng: toilet.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { toilet: toilet }),
        image_url: helpers.asset_url('toilet-paper-icon.png')
      }
    end
  end

  def show
    authorize @toilet
    @booking = Booking.new
    existing_booking
    @toilets = policy_scope(Toilet)
    @marker = [{ lat: @toilet.latitude, lng: @toilet.longitude, image_url: helpers.asset_url('toilet-paper-icon.png') }]
  end

  def new
    @toilet = Toilet.new
    authorize @toilet
  end

  def create
    @toilet = Toilet.new(toilet_params)
    @toilet.owner_id = current_user.id
    @toilet.available = true
    authorize @toilet
    if @toilet.save
      redirect_to toilet_path(@toilet)
    else
      render :new
    end
  end

  def edit
    authorize @toilet
  end

  def update
    @toilet.update(toilet_params)
    @toilet.save
  end

  def destroy
    authorize @toilet
    @toilet.destroy
    redirect_to profile_path, notice: 'Toilet successfully deleted!'
  end

  private

  def existing_booking
    user_bookings = @toilet.bookings.where(user: current_user)
    @existing_booking = user_bookings.find_by(active_booking: true) if user_bookings.any?
  end

  def toilet_params
    params.require(:toilet).permit(:name, :address, :description, :price, :photo, :wifi, :reading_material, :air_con, :window, :floor_heating, :speakers, :photo_cache)
  end

  def fetch_toilet
    @toilet = Toilet.find(params[:id])
  end
end
