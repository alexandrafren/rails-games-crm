class Game < ApplicationRecord
	has_many :reviews
	has_many :users, through: :reviews
	has_many :console_games
	has_many :consoles, through: :console_games
end
