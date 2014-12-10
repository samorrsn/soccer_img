class AddIndexToNotes < ActiveRecord::Migration
  def change
  	add_index :notes, [:player_id, :coach_id]
  end
end
