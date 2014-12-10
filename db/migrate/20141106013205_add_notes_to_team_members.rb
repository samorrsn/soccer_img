class AddNotesToTeamMembers < ActiveRecord::Migration
  def change
    add_column :team_members, :notes, :text
  end
end
