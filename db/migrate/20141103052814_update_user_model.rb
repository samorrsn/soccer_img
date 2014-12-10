class UpdateUserModel < ActiveRecord::Migration
  def change
      change_table :users do |t|
          t.string :password
          t.string :phone_number
          t.string :street_address
          t.string :city
          t.string :state
          t.integer :zipcode
      end
      remove_column :users, :team_id, :integer
  end
end
