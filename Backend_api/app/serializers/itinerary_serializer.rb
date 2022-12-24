class ItinerarySerializer < ActiveModel::Serializer
    #include JSONAPI::Serializer
    attributes :id, :trip_id, :itinerary_description

    belongs_to :trip
end