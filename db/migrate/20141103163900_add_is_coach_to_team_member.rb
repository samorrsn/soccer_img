class AddIsCoachToTeamMember < ActiveRecord::Migration
	def change
		add_column :team_members, :is_coach, :boolean
	end
end
