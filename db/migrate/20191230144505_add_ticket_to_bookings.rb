class AddTicketToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :ticket, :integer
  end
end
