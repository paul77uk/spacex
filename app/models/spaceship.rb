class Spaceship < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :spaceship_tags, dependent: :destroy
  has_many :tags, through: :spaceship_tags
end
