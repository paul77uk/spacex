class SpaceshipsController < ApplicationController
  before_action :set_spaceship, only: [:show, :edit, :destroy]

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

  def edit
  end

  def destroy
    @spaceship.destroy
    redirect_to pages_dashboard_path, status: :see_other
  end

  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :color, :seats, :year, :description, :photo)
  end

  def set_spaceship
    @spaceship = Spaceship.find(params[:id])
  end
end
