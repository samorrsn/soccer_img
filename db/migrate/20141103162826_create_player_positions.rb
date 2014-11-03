class CreatePlayerPositions < ActiveRecord::Migration
  def change
    create_table :player_positions do |t|
      t.integer :team_member_id
      t.integer :team_id

      t.timestamps
    end
  end
end
