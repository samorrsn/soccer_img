class ChangeIndexInNotes < ActiveRecord::Migration
  def change
  	remove_index :notes, [:player_id, :coach_id]
  	rename_column :notes, :player_id, :team_player_id
  	rename_column :notes, :coach_id, :team_coach_id
  	add_index :notes, [:team_player_id, :team_coach_id]
  end
end
