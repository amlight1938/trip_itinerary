class Trip < ApplicationRecord
    scope :with_user_id, -> (id) {where("user_id = ?", id)}
    scope :no_associated_user, -> {where.missing(:user)}

    belongs_to :user, optional: true
    has_many :activities
    has_many :images
    has_many :itineraries
end
