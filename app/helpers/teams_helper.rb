module TeamsHelper

	def is_coach?(team)
		!TeamCoach.where("team_id = ? AND user_id = ?", team, current_user).empty?
	end

end
