class SpaceshipsController < ApplicationController
  def show
    @spaceship = Spaceship.find(params[:id])
  end
end
