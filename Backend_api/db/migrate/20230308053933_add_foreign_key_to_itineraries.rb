class AddForeignKeyToItineraries < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :itineraries, :trips
  end
end
