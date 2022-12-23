class ImageSerializer
    include JSONAPI::Serializer
    attributes :image_url, :trip_id

    belongs_to :trip
end