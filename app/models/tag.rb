class Tag < ApplicationRecord
  has_many :spaceship_tags, dependent: :destroy
  has_many :spaceships, through: :spaceship_tags
end
