class ActivitySerializer
  include JSONAPI::Serializer
  attributes :trip_activity, :trip_id

  belongs_to :trip
end
