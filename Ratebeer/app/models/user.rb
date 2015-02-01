class User < ActiveRecord::Base
	include RatingAverage
	has_secure_password
	has_many :ratings

	validates :username, uniqueness: true, length: { minimum: 3, maximum: 15 }
	validates :password, length:{ minimum:4 }
	
end
