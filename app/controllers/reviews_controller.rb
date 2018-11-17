class ReviewsController < ApplicationController

  def new
    @game = Game.find(2)
    @game.reviews.build(rating: 1)
  end

  def create
  end

end
