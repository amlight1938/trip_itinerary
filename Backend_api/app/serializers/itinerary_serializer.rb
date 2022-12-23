class ItinerarySerializer
    include JSONAPI::Serializer
    attributes :itinerary_description, :trip_id

    belongs_to :trip
end