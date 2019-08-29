class ReviewsController < ApplicationController
    before_action :fetch_review, only: %i[show edit update destroy]

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    authorize @review
    @review.booking_id = @booking.id
    if @review.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def edit
    authorize @review
  end

  def update
    authorize @review
    @review.update(review_params)
    @review.save
    redirect_to profile_path, notice: 'Review successfully updated!'
  end

  def destroy
    authorize @review
    @review.destroy
    redirect_to profile_path, notice: 'Review successfully deleted!'
  end

  private

  def review_params
    params.require(:review).permit(:stars, :description)
  end

  def fetch_review
    @review = Review.find(params[:id])
  end
end
