class TeamPlayer < TeamMember
	belongs_to :team
	has_many :notes
	has_many :users, through: :team
	has_many :statistics

end
