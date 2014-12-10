class AddPositionToTeam < ActiveRecord::Migration
	def change
		add_column :teams, :positions, :string, :array => true, :default => ['Goalkeeper', 'Forward', 'Defender', 'Benchwarmer']
	end
end
