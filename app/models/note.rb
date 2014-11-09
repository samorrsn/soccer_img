class Note < ActiveRecord::Base
	belongs_to :team_member
	belongs_to :team_player
	belongs_to :team_coach
end
