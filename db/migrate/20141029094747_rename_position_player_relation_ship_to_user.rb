class RenamePositionPlayerRelationShipToUser < ActiveRecord::Migration
  def change
    change_table :positions do |t|
        t.rename :player_id, :user_id
    end
  end
end
