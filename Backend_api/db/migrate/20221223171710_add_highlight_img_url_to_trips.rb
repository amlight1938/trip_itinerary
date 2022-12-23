class AddHighlightImgUrlToTrips < ActiveRecord::Migration[7.0]
  def change
    add_column :trips, :highlight_img_url, :string
  end
end
