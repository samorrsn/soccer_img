module TeamsHelper

	def is_coach?(team)
		!TeamCoach.where("team_id = ? AND user_id = ?", team, current_user).empty?
	end

	def is_a_coach?(team_member)
		team_member.type == "TeamCoach"
	end

	def has_notes(team_member)
		team_member.notes.count > 0
	end


end
