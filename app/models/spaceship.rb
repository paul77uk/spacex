class Spaceship < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  def unavailable_dates
    bookings.pluck(:start_date, :end_date, :id).map do |date|
      { from: date[0], to: date[1], booking_id: date[2] }
    end
  end
end
