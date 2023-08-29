class PagesController < ApplicationController
  def home
  end

  def dashboard
    @current_user_bookings = current_user.bookings
    @current_user_spaceships = current_user.spaceships
  end
end
