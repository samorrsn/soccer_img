class Statistic < ActiveRecord::Base
    belongs_to :team
    has_many   :event
    has_many :player_statistics
    has_many :team_players, through: :player_statistics
end
