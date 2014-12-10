class ChangeIndexOnPlayerPositions < ActiveRecord::Migration
  def change
  	remove_index :player_positions, [:position_id, :team_member_id]
  	remove_column :player_positions, :team_member_id
  	add_column :player_positions, :team_player_id, :integer
  	add_index :player_positions, [:position_id, :team_player_id], :unique => true
  end
end
