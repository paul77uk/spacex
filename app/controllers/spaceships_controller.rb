class SpaceshipsController < ApplicationController
  def new
    @spaceship = Spaceship.new
  end

  def show
    @spaceship = Spaceship.find(params[:id])
  end
end
