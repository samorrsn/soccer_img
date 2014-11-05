class Statistics < ActiveRecord::Base
    belongs_to :team
    belongs_to :team_player
    has_many   :event
end
