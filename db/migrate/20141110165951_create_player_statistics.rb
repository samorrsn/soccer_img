class CreatePlayerStatistics < ActiveRecord::Migration
  def change
    create_table :player_statistics do |t|
      t.integer :team_player_id
      t.integer :statistic_id

      t.timestamps
    end
    add_index :player_statistics, [:team_player_id, :statistic_id]
  end
end
