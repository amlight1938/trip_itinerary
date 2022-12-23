class CreateItineraries < ActiveRecord::Migration[7.0]
  def change
    create_table :itineraries do |t|
      t.string :itinerary_description
      t.belongs_to :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
