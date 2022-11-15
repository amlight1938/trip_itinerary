class TripSerializer
  include JSONAPI::Serializer
  attributes :name, :location, :date, :description

  has_many :activities
end
