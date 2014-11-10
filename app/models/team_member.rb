class TeamMember < ActiveRecord::Base
	belongs_to :user
	belongs_to :team
	has_many :player_positions
	has_many :positions, through: :player_positions
	has_many :team_member_availabilities
	has_many :notes
	has_many :team_members
	def self.is_coach
		where(is_coach: 't')
	end

	def full_name
		"#{member_first_name} #{member_last_name}"
	end
end
