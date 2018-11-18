class User < ApplicationRecord
	has_many :reviews
	has_many :games, through: :reviews
	has_secure_password
	validates :name, :password_digest, presence: true
	validates :name, uniqueness: true


	def self.most_liked
		self.joins(:reviews).where(reviews: {user_id: self.id}).order(rating: :asc).limit(3)
	end

end
