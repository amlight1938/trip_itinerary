class PartialTripSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :highlight_img_url, :description, :user
  # :location, :date,

  belongs_to :user
  # has_many :activities

end
