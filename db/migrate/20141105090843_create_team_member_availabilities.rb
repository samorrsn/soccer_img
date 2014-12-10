class CreateTeamMemberAvailabilities < ActiveRecord::Migration
  def change
    create_table :team_member_availabilities do |t|
      t.belongs_to :team_member
      t.boolean :isAvailable
      t.date :date
      t.time :from_time
      t.time :till_time

      t.timestamps
    end
  end
end
