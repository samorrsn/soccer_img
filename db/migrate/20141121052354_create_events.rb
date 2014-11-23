class CreateEvents < ActiveRecord::Migration
  def change
  	drop_table :events
    create_table :events do |t|
      t.string :title
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :all_day
      t.text :description

      t.timestamps
    end
  end
end