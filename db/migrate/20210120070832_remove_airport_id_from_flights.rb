class RemoveAirportIdFromFlights < ActiveRecord::Migration[6.1]
  def change
    remove_column :flights, :airport_id
  end
end
