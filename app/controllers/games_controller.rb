class GamesController < ApplicationController
	def index
		@games = Game.all
	end

	def show
		@game = Game.find(params[:id])
	end

	def new
		@game = Game.new
	end

	def create
		game = Game.create(games_params)
		game.reviews.first.user_id = session[:user_id]
		game.save
		binding.pry
		redirect_to '/games'
	end

private
	def games_params
		params.require(:game).permit(:name, :release_year, console_ids:[], reviews_attributes: [:rating], reviews_attributes: [:content])
	end

end
