class TeamMember < ActiveRecord::Base
	belongs_to :user
	belongs_to :team
	has_many :player_positions
	has_many :positions, through: :player_positions
	has_many :team_member_availabilities
	has_many :notes
	def self.is_coach
		where(is_coach: 't')
	end
end
