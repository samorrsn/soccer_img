class Team < ActiveRecord::Base
	#attr_accessor :name, :mascot
	validates :name, :mascot, presence: true
	has_many :team_members
	has_many :users, through: :team_members
end
