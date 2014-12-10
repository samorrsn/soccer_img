class AddTeamPlayerIdToStatistics < ActiveRecord::Migration
  def change
  	drop_table :player_statistics
  	add_column :statistics, :team_player_id, :integer
  	add_index :statistics, :team_player_id
  end
end
