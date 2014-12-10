class ChangeIsCoachToStringInTeamMember < ActiveRecord::Migration
  def change
  	remove_column :team_members, :is_coach
  	add_column :team_members, :type, :string
  end
end
