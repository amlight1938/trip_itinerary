class PartialTripSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :location, :date, :highlight_img_url, :description, :user
  
  belongs_to :user
  has_many :activities

end
