class BookingsController < ApplicationController
before_action :fetch_booking, only: %i[show edit destroy]

  def new
    # authorize @booking
    @booking = Booking.new
  end

  def show
    @bookings = policy_scope(Booking)
    @booking = Booking.find(params[:id])
    authorize @booking

  end

  def create
    @booking = Booking.new
    @toilet = Toilet.find(params[:toilet_id])
    authorize @booking
    current_user.bookings.each do |booking|
      if booking.active_booking
        redirect_to toilet_path(@toilet), notice: "You're already using a toilet somewhere else!" and return
      end
    end
    @booking.user_id = current_user.id
    @booking.active_booking = true
    @booking.start_time = Time.now
    @booking.toilet_id = @toilet.id
    if @booking.save
      @booking.toilet.available = false
      @booking.toilet.save
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
    @booking.active_booking = false
    if @booking.save
      @booking.toilet.available = true
      @booking.toilet.save
      redirect_to toilet_path(@toilet), notice: "Booking updated!"
    else
      redirect_to toilet_path(@toilet), notice: "Booking not updated!"
    end
  end

  private

  def fetch_booking
    @booking = Booking.find(params[:id])
  end

end
