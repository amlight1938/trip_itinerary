class ImageSerializer < ActiveModel::Serializer
    #include JSONAPI::Serializer
    attributes :id, :trip_id, :image_url

    belongs_to :trip
end