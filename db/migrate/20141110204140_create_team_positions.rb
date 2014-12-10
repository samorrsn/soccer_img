class CreateTeamPositions < ActiveRecord::Migration
  def change
    create_table :team_positions do |t|
      t.integer :team_id
      t.integer :position_id

      t.timestamps
    end
    add_index :team_positions, [:team_id, :position_id]
  end
end
