class AddForeignKeyToImages < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :images, :trips
  end
end