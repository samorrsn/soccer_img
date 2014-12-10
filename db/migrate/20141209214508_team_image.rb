class TeamImage < ActiveRecord::Migration
	def change
		create_table :team_images do |t|
			t.integer :team_id
			t.string :image

			t.timestamps
		end
		add_index :team_images, :team_id
	end
end
