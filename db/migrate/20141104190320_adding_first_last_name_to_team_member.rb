class AddingFirstLastNameToTeamMember < ActiveRecord::Migration
  def change
      change_table :team_members do |t|
        t.string :member_first_name
        t.string :member_last_name
      end
  end
end
