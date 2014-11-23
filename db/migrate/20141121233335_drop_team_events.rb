class DropTeamEvents < ActiveRecord::Migration
  def change
  	drop_table :team_events
  end
end
