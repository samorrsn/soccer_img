class TeamCoach < TeamMember
	belongs_to :team
	has_many :notes
end
