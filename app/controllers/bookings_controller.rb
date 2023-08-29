class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @spaceship = Spaceship.find(params[:spaceship_id])
    @user = current_user
  end

  def create
    # @spaceship = Spaceship.find(params[:spaceship_id])
    # @booking = Booking.new(booking_params)
    # @booking.spaceship = @spaceship
    # @booking.user = @spaceship.user_id/current_user
    # if @booking.save
    #   redirect_to dashboard_path
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :price)
  end
end
