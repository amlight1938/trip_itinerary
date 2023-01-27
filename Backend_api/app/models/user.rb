class User < ApplicationRecord
    has_secure_password
    has_many :trips, dependent: :destroy
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: {minimum: 4}
    validates :password, confirmation: true
    validates :password_confirmation, presence: true
end
