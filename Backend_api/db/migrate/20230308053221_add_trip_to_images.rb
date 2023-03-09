class AddTripToImages < ActiveRecord::Migration[7.0]
  def change
    add_reference :images, :trip, index: true
  end
end
