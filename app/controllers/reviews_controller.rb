class ReviewsController < ApplicationController

  def new
    @game = Game.find(params[:game_id])
    @game.reviews.build
  end

  def create
  end

private
  def review_params
    params.require(:review).permit(:rating, :content, :game_id)
  end

end
