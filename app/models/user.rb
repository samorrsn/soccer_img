class User < ActiveRecord::Base
	validates_inclusion_of :user_type, in:Choices['user_type']
	before_save { self.email = email.downcase }
	before_create :create_remember_token

	#removed for testing
	#attr_accessor :first_name, :last_name, :email, :password, :phone_number,
	#				:street_address, :city, :state, :zipcode, :user_type
	#validates :first_name, :last_name, :email, :password, :phone_number,
	#				:street_address, :city, :state, :zipcode, :user_type,
	#				presence: true
	has_many :team_members
	has_many :teams, through: :team_members
	has_secure_password

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.digest(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

	def create_remember_token
		self.remember_token = User.digest(User.new_remember_token)
	end
end
