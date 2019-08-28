class BookingsController < ApplicationController

  def new
    # authorize @booking
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @toilet = Toilet.find(params[:toilet_id])
    authorize @booking
    @booking.user_id = current_user.id
    @booking.start_time = Time.now
    @booking.toilet_id = @toilet.id
    if @booking.save
      @booking.toilet.available = false
      redirect_to toilet_path(@toilet), notice: "Booking created!"
    else
      redirect_to toilet_path(@toilet), notice: "Booking not created!"
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @toilet = @booking.toilet
    authorize @booking
    @booking.end_time = Time.now
    if @booking.update
      @booking.toilet.available = true
      redirect_to toilet_path(@toilet), notice: "Booking updated!"
    else
      redirect_to toilet_path(@toilet), notice: "Booking not updated!"
    end
  end


end
