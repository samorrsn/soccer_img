module TeamsHelper

	def is_coach?(team)
		!TeamMember.where("team_id = ? AND user_id = ?", team, current_user).is_coach.empty?
	end

end
