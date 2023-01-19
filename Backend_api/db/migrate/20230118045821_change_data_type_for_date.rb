class ChangeDataTypeForDate < ActiveRecord::Migration[7.0]
  def self.up
    change_table :trips do |t|
      t.change :date, :string
    end
  end
  def self.down
    change_table :trips do |t|
      t.change :date, :date
    end
  end
end

