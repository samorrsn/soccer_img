class TeamMember < ActiveRecord::Base
	belongs_to :user
	belongs_to :team
	has_many :player_positions
	has_many :positions, through: :player_positions
end
