class AddTripToActivities < ActiveRecord::Migration[7.0]
  def change
    add_reference :activities, :trip, index: true
  end
end
