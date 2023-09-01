class SpaceshipTagsController < ApplicationController
  def create
    @spaceship = Spaceship.find(params[:spaceship_id])
    @tags = Tag.where(id: params.dig(:spaceship_tag, :tag))
    @tags.each do |tag|
      spaceship_tag = SpaceshipTag.new(spaceship: @spaceship, tag: tag)
      spaceship_tag.save
    end
  end
end
