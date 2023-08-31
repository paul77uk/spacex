class SpaceshipsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_spaceship, only: [:show, :edit, :update, :destroy]

  def index
    @spaceships = Spaceship.all
  end

  def new
    @spaceship = Spaceship.new
  end

  def show
    @booking = Booking.new
    @unavailable_dates = @spaceship.unavailable_dates
  end

  def create
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user = current_user
    save_changes
  end

  def edit
  end

  def destroy
    @spaceship.destroy
    redirect_to pages_dashboard_path
  end

  def update
    @spaceship.update(spaceship_params)
    save_changes
  end

  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :color, :seats, :year, :description, :photo)
  end

  def set_spaceship
    @spaceship = Spaceship.find(params[:id])
  end

  def save_changes
    if @spaceship.save
      redirect_to spaceship_path(@spaceship)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
