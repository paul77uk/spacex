class Spaceship < ApplicationRecord
  attr_accessor :address

  belongs_to :user
  has_one_attached :photo
  has_many :bookings
end
