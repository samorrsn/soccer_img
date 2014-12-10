class SetDefaultUserType < ActiveRecord::Migration
  def change
    change_column :users, :user_type, :text, :default => "member"
  end
end
