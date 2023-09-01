class Spaceship < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  belongs_to :user
  has_many :bookings, dependent: :destroy

  def unavailable_dates
    bookings.pluck(:start_date, :end_date, :id).map do |date|
      { from: date[0], to: date[1], booking_id: date[2] }
    end
  end

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :name, :color, :seats, :year, :address, :price ],
  associated_against: {
    user: [ :first_name, :last_name ]
  },
  using: {
    tsearch: { prefix: true }
  }
end
