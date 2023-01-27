class Trip < ApplicationRecord
    scope :with_user_id, -> (id) {where("user_id = ?", id)}
    scope :no_associated_user, -> {where.missing(:user)}

    belongs_to :user, optional: true
    has_many :activities, dependent: :destroy
    has_many :images, dependent: :destroy
    has_many :itineraries, dependent: :destroy
end
