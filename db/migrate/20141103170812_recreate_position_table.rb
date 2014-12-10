class RecreatePositionTable < ActiveRecord::Migration
	def change
		drop_table :positions
		create_table :positions do |t|
			t.string :title

			t.timestamps
		end
	end
end
