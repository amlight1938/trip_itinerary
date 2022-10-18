class CreateCarousels < ActiveRecord::Migration[7.0]
  def change
    create_table :carousels do |t|
      t.string :caption
      t.string :subcaption

      t.timestamps
    end
  end
end
