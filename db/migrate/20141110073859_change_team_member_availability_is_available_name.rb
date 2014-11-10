class ChangeTeamMemberAvailabilityIsAvailableName < ActiveRecord::Migration
  def change
    change_table :team_member_availabilities do |t|
      t.rename :is_available, :is_available
    end
  end
end
