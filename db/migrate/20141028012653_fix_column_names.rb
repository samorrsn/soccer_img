class FixColumnNames < ActiveRecord::Migration
	def change
		change_table :users do |t|
			t.rename :firstName, :first_name
			t.rename :lastName, :last_name
		end
	end
end
