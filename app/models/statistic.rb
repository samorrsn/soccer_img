class Statistic < ActiveRecord::Base
    belongs_to :team
    has_many   :event
    belongs_to :team_player
end
