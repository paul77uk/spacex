class SpaceshipsController < ApplicationController
  def new
    @spaceship = Spaceship.new
  end
end
