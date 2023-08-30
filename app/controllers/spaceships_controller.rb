class SpaceshipsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def index
    @spaceships = Spaceship.all
  end

  def new
    @spaceship = Spaceship.new
  end

  def show
    @spaceship = Spaceship.find(params[:id])
    @booking = Booking.new
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user = current_user

    if @spaceship.save
      redirect_to spaceship_path(@spaceship)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :color, :seats, :year, :description, :photo)
  end

  def set_spaceship
    @spaceship = Spaceship.find(params[:id])
  end
end
