class TripSerializer
  include JSONAPI::Serializer
  attributes :name, :location, :date, :description, :highlight_img_url

  has_many :activities
  has_many :images
  has_one :itinerary
end
