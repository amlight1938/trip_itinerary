class PartialTripSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :highlight_img_url, :description, :user_id, :location, :date
  # :location, :date,

  # belongs_to :user
  has_many :activities

end
