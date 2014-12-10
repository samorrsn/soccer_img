class AddIndexToEvents < ActiveRecord::Migration
  def change
  	add_index :events, :team_id
  end
end
