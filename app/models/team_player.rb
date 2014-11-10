class TeamPlayer < TeamMember
	belongs_to :team
	has_many :notes
	has_many :users, through: :team
	has_many :player_statistics
	has_many :statistics, through: :player_statistics
end
