class RemoveDateTimeFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :date_time, :datetime
  end
end
