class Team < ActiveRecord::Base

	#attr_accessor :name, :mascot
	validates :name, :mascot, presence: true
	has_many :team_members
	has_many :users, through: :team_members
	has_many :team_member_availabilities, through: :team_members
	has_many :team_players
	has_many :team_coaches
	has_many :notes
	has_many :team_positions
	has_many :positions, through: :team_positions
	has_many :statistics, through: :team_players
	include ActiveModel::Conversion
	extend  ActiveModel::Naming
	after_create :add_defaults
	def add_defaults
		self.positions.create(title: 'Goalkeeper')
		self.positions.create(title: 'Midfielder')
		self.positions.create(title: 'Defender')
		self.positions.create(title: 'Forward')
	end
end
