class AddTripToItineraries < ActiveRecord::Migration[7.0]
  def change
    add_reference :itineraries, :trip, index: true
  end
end