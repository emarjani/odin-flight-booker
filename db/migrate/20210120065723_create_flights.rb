class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :from_airport_id
      t.integer :to_airport_id
      t.datetime :datetime
      t.float :duration
      t.references :airport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
