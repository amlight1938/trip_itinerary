class DropItineraries < ActiveRecord::Migration[7.0]
  def change
    drop_table :itineraries
  end
end
