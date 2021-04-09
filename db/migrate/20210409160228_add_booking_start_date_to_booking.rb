class AddBookingStartDateToBooking < ActiveRecord::Migration[6.1]
  def change
     add_column :bookings, :booking_start_date, :date
     add_column :bookings, :booking_end_date, :date
  end
end
