class PagesController < ApplicationController
  def home
    @spaceships = Spaceship.all
    if params[:query].present?
      @spaceships = @spaceships.where(seats: params[:query].to_i)
    end
  end
end
