class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
    	t.integer :player_id
    	t.integer :coach_id
    	t.text :note_text
      t.timestamps
    end
  end
end
