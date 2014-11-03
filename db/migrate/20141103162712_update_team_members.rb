class UpdateTeamMembers < ActiveRecord::Migration
	def change
		change_table :team_members do |t|
			t.integer :team_id
			t.integer :user_id
		end
		add_index :team_members, [:team_id, :user_id], :unique => true
		remove_column :team_members, :display_name
	end
end
