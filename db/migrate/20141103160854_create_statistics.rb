class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.integer :goals
      t.integer :assists

      t.timestamps
    end
  end
end
