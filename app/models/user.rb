class User < ApplicationRecord
	has_many :reviews
	has_many :games, through: :reviews
	has_secure_password
	validates :name, presence: true
	validates :name, uniqueness: true


	def self.most_liked
		self.joins(:reviews).where(reviews: {user_id: self.id}).order(rating: :asc).limit(3)
	end

	def self.find_or_create_by_omniauth(auth_hash)
		omniauth_id = auth_hash["uid"]
		self.where(:uid => omniauth_id).first_or_create do |user|
			user.name = auth_hash["info"]["name"]
			user.password = SecureRandom.hex
		end
	end

end
