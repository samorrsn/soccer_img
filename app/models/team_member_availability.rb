class TeamMemberAvailability < ActiveRecord::Base
  belongs_to :team_member
  belongs_to :team_player
  

end
