class CreatePlayerImages < ActiveRecord::Migration
	def change
		create_table :player_images do |t|

			t.integer :team_player_id
			t.string :image

			t.timestamps
		end
		add_index :player_images, :team_player_id
	end
end
