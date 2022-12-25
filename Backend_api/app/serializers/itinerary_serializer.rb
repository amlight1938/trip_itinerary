class ItinerarySerializer < ActiveModel::Serializer
    #include JSONAPI::Serializer
    attributes :id, :trip_id, :day_number, :day_itinerary

    belongs_to :trip
end