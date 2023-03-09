class CreateItineraries < ActiveRecord::Migration[7.0]
  def change
    create_table :itineraries do |t|
      t.string :day_number
      t.string :day_itinerary

      t.timestamps
    end
  end
end
