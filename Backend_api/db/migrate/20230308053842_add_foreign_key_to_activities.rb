class AddForeignKeyToActivities < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :activities, :trips
  end
end
