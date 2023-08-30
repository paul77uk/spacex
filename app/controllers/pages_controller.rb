class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @spaceships = Spaceship.all
    if params[:query].present?
      @spaceships = @spaceships.where(seats: params[:query].to_i)
    end
  end

  def dashboard
    @current_user_bookings = current_user.bookings
    @current_user_spaceships = current_user.spaceships
    # @current_user_spaceships = Spaceship.all
  end
end
