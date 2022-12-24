class ActivitySerializer < ActiveModel::Serializer
  #include JSONAPI::Serializer
  attributes :id, :trip_id, :trip_activity

  belongs_to :trip
end
