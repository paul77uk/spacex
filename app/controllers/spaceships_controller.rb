class SpaceshipsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  before_action :set_spaceship, only: %i[show edit update destroy]

  # spaceships.name @@ :query
  # OR spaceships.color @@ :query
  # OR spaceships.seats @@ :query
  # OR spaceships.year @@ :query
  # OR spaceships.address @@ :query
  # OR users.first_name @@ :query
  # OR users.last_name @@ :query

  def index
    @spaceships = Spaceship.all
    if params[:query].present?
      sql_subquery = <<~SQL
        spaceships.name @@ :query
        OR spaceships.color @@ :query
        OR spaceships.seats @@ :query
        OR spaceships.year @@ :query
        OR spaceships.address @@ :query
        OR users.first_name @@ :query
        OR users.last_name @@ :query
      SQL
      @spaceships = @spaceships.global_search(params[:query])
    end
  end

  def new
    @spaceship = Spaceship.new
  end

  def show
    @spaceships = Spaceship.geocoded
    @markers = @spaceships.where(id: params[:id]).map do |spaceship|
      {
        lat: spaceship.latitude,
        lng: spaceship.longitude,
        info_window_html: render_to_string(partial: "spaceships/info_window", locals: {spaceship: spaceship}),
        marker_html: render_to_string(partial: "spaceships/marker", locals: {spaceship: spaceship})
      }
    end
    @booking = Booking.new
    @unavailable_dates = @spaceship.unavailable_dates
  end

  def create
    @spaceship_tag = SpaceshipTag.new
    @spaceship = Spaceship.new(spaceship_params)
    @spaceship.user = current_user
    save_changes
  end

  def edit
    @spaceship_tag = SpaceshipTag.new
  end

  def destroy
    @spaceship.destroy
    redirect_to pages_dashboard_path
  end

  def update
    
    params[:spaceship][:tags].each { |tag| SpaceshipTag.create(spaceship: @spaceship, tag_id: tag) }

    @spaceship.update(spaceship_params)
    save_changes
  end

  private

  def spaceship_params
    params.require(:spaceship).permit(:name, :color, :seats, :year, :description, :photo, :address)
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
