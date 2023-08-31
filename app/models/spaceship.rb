class Spaceship < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :spaceship_tags, dependent: :destroy
  has_many :tags, through: :spaceship_tags
end
