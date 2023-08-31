class BookingsController < ApplicationController
  before_action :select_spaceship, only: %i[new create edit]
  before_action :select_booking, only: %i[edit update destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.spaceship = @spaceship
    @booking.user = current_user
    if @booking.save
      redirect_to pages_dashboard_path
    else
      render 'spaceships/show', status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to pages_dashboard_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to pages_dashboard_path
  end

  private

  def select_spaceship
    @spaceship = Spaceship.find(params[:spaceship_id])
  end

  def select_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
