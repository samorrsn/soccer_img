class User < ActiveRecord::Base
	validates_inclusion_of :user_type, in:Choices['user_type']
	#removed for testing
	#attr_accessor :first_name, :last_name, :email, :password, :phone_number,
	#				:street_address, :city, :state, :zipcode, :user_type
	#validates :first_name, :last_name, :email, :password, :phone_number,
	#				:street_address, :city, :state, :zipcode, :user_type,
	#				presence: true
	has_many :team_members
	has_many :teams, through: :team_members

end
