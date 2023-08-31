class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @spaceship = Spaceship.find(params[:spaceship_id])
  end

  def create

    @spaceship = Spaceship.find(params[:spaceship_id])
    @booking = Booking.new(booking_params)
    @booking.spaceship = @spaceship
    @booking.user = current_user
    if @booking.save
      redirect_to pages_dashboard_path
    else
      render 'spaceships/:id', status: :unprocessable_entity
    end
  end

  def edit
    @booking = Booking.find(params[:id])
    @spaceship = Spaceship.find(params[:spaceship_id])
  end

  def update
    booking = Booking.find(params[:id])
    if booking.update(booking_params)
      redirect_to pages_dashboard_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to pages_dashboard_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
