class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @spaceships = Spaceship.all
    @spaceships_map = Spaceship.geocoded
    @markers = @spaceships_map.map do |spaceship|
      {
        lat: spaceship.latitude,
        lng: spaceship.longitude,
        info_window_html: render_to_string(partial: "spaceships/info_window", locals: {spaceship: spaceship}),
        marker_html: render_to_string(partial: "spaceships/marker", locals: {spaceship: spaceship})
      }
    end
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

  def dashboard
    @current_user_bookings = current_user.bookings.order(:start_date)
    @current_user_spaceships = current_user.spaceships
    # @current_user_spaceships = Spaceship.all
  end
end
