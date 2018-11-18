class Review < ApplicationRecord
	belongs_to :game
	belongs_to :user
	validates :content, length: {in: 20..200}
	validates :rating, numericality: {only_integer: true}
	validates :rating, presence: true
end
