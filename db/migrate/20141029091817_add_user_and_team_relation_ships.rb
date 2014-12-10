class AddUserAndTeamRelationShips < ActiveRecord::Migration

  def change
    change_table :users do |t|
        t.belongs_to :team
    end

  end

end
