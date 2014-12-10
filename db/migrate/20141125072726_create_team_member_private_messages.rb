class CreateTeamMemberPrivateMessages < ActiveRecord::Migration
  def change
    create_table :team_member_private_messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.text :subject
      t.text :body
      t.boolean :is_read

      t.timestamps
    end
  end
end
