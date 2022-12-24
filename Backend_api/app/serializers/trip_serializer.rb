class TripSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :location, :date, :highlight_img_url, :description 
  
  has_many :activities
  has_many :images
  has_one :itinerary
end
