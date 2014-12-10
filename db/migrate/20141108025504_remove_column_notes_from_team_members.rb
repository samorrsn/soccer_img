class RemoveColumnNotesFromTeamMembers < ActiveRecord::Migration
  def change
    remove_column :team_members, :notes, :text
  end
end
