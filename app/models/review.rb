class Review < ApplicationRecord
	belongs_to :game
	belongs_to :user
	validates :content, length: {in: 20..200, message: "reviews must be between 20 and 200 charecters"}
	validates :rating, numericality: {only_integer: true, message: "rating must be an integer"}
	validates :rating, presence: true
end
