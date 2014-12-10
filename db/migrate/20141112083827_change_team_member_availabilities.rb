class ChangeTeamMemberAvailabilities < ActiveRecord::Migration
  def change
    change_table :team_member_availabilities do |t|
      t.rename :from_time, :from
      t.rename :till_time, :till
      t.remove :date
    end
  end
end
