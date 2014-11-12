class ChangeTeamMemberAvailabilitiesFromTillType < ActiveRecord::Migration
  def change
    change_column :team_member_availabilities, :from, :datetime
    change_column :team_member_availabilities, :till, :datetime
  end
end
