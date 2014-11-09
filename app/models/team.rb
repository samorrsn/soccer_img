class Team < ActiveRecord::Base
	#attr_accessor :name, :mascot
	validates :name, :mascot, presence: true
	has_many :team_members
	has_many :users, through: :team_members
	has_many :team_member_availabilities
	has_many :team_players
	has_many :team_coaches
	has_many :notes
	include ActiveModel::Conversion
	extend  ActiveModel::Naming
end
