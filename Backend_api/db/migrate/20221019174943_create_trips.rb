class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :location
      t.date :date
      t.string :description

      t.timestamps
    end
  end
end
