class AddPassengerToBookings < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookings, :passenger, index: true
  end
end
