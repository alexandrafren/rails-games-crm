class ReviewsController < ApplicationController

  def new
    @review = Review.new(game_id: params[:game_id])
  end

  def create
    review = Review.create(rating: params[:review][:rating], game_id: params[:review][:game_id], content: params[:review][:content])
    review.user_id = 1
    review.save
    redirect_to '/games'
  end

private
  def review_params
    params.require(:review).permit(:rating, :content, :game_id)
  end

end
