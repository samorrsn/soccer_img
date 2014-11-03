class ChangePostitionsTableToReferenceTeamMember < ActiveRecord::Migration
  def change
      change_table :positions do |t|
          t.belongs_to :team_member
          t.rename :name, :position_name
      end
      remove_column :positions, :user_id, :integer
      remove_column :positions, :team_id, :integer
  end
end
