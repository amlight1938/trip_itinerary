class TripSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :location, :date, :highlight_img_url, :description, :user
  
  belongs_to :user
  has_many :activities
  has_many :images
  has_many :itineraries do
    object.itineraries.order(:id)
  end
end
