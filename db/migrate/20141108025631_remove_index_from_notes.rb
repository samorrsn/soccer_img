class RemoveIndexFromNotes < ActiveRecord::Migration
  def change
  	remove_index :notes, name: :index_notes_on_player_id_and_coach_id
  end
end
