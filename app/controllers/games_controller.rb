class GamesController < ApplicationController
	helper_method :params
	def index
		@games = Game.all
	end

	def show
		@user = current_user
		@game = Game.find(params[:id])
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.new(games_params)
		@game.reviews.first.user_id = session[:user_id]
		if @game.valid?
			@game.reviews.first.user_id = session[:user_id]
			@game.save
			redirect_to '/games'
		else
			render :new
		end
	end

private
	def games_params
		params.require(:game).permit(:name, :release_year, console_ids:[], reviews_attributes: [:content, :rating])
	end

end
