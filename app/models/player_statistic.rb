class PlayerStatistic < ActiveRecord::Base
	belongs_to :team_player
	belongs_to :statistic
end
