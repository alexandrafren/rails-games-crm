class Game < ApplicationRecord
	has_many :reviews
	has_many :users, through: :reviews
	has_many :console_games
	has_many :consoles, through: :console_games
	accepts_nested_attributes_for :reviews
	validates :release_year, numericality: {greater_than: 1949}
	validates :release_year, numericality: {less_than_or_equal_to: 2018}
	validates :name, :release_year, presence: true
end
