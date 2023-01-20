class Trip < ApplicationRecord
    belongs_to :user, optional: true
    has_many :activities
    has_many :images
    has_many :itineraries
end
