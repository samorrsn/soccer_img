class PlayerPosition < ActiveRecord::Base
	belongs_to :position
	belongs_to :team_member
	belongs_to :team_player
end
