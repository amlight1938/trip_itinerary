class Trip < ApplicationRecord
    has_many :activities
    has_many :images
    has_one :itinerary
end
