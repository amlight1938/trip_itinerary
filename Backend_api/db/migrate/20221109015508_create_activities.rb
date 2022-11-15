class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :trip_activity
      t.belongs_to :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
