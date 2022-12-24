class PartialTripSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :location, :date, :highlight_img_url, :description 
  
  has_many :activities

end
