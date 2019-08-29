class AddActiveBookingToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :active_booking, :boolean
  end
end
