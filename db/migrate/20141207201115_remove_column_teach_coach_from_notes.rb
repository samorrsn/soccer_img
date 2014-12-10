class RemoveColumnTeachCoachFromNotes < ActiveRecord::Migration
  def change
  	remove_index :notes, [:team_player_id, :team_coach_id]
  	remove_column :notes, :team_coach
  	add_index :notes, :team_player_id
  end
end
