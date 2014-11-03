class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
      t.string :display_name

      t.timestamps
    end
  end
end
