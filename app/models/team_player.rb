class TeamPlayer < TeamMember
	belongs_to :team
	has_many :notes
	has_many :users, through: :team
	has_many :statistics
	has_many :player_positions
	has_many :positions, through: :player_positions
	has_many :team_member_availabilities
	has_one :player_image
	def position_choices
		self.team.positions
	end

end
