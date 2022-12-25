class Trip < ApplicationRecord
    has_many :activities
    has_many :images
    has_many :itineraries
end
