class AddIndexesToPlayerPositions < ActiveRecord::Migration
	def change
		remove_column :player_positions, :team_id
		add_column :player_positions, :position_id, :integer
		add_index :player_positions, [:position_id, :team_member_id], :unique => true
	end
end
