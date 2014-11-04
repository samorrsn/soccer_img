class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :type
      t.date :date
      t.time :time
      t.string :opponent
      t.string :location

      t.timestamps
    end
  end
end
