class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :title
      t.belongs_to :player
      t.belongs_to :team

      t.timestamps
    end
  end
end
