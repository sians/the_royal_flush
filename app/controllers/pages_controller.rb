class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @toilets = Toilet.all
  end

  def test
  end

  def profile
    @toilets = Toilet.all.where(owner_id: current_user.id)
    current_user.bookings.each do |booking|
      @active_booking = booking if booking.active_booking
    end
  end

  private

end
