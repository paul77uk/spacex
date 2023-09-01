class Spaceship < ApplicationRecord
  include PgSearch::Model
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings, dependent: :destroy

  def unavailable_dates
    bookings.pluck(:start_date, :end_date, :id).map do |date|
      { from: date[0], to: date[1], booking_id: date[2] }
    end
  end

  pg_search_scope :search_by_info,
    against: [ :name, :color, :seats, :year, :address ],
    using: {
      tsearch: { prefix: true }
    }
end
