class AddTeamPlayerIdToTeamMemberAvailability < ActiveRecord::Migration
  def change
  	add_column :team_member_availabilities, :team_player_id, :integer
  	add_index :team_member_availabilities, :team_player_id
  end
end
