class Position < ActiveRecord::Base
	has_many :player_positions
	has_many :team_members, through: :player_positions
end
