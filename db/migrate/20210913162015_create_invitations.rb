class CreateInvitations < ActiveRecord::Migration[6.1]
  def change
    create_table :invitations do |t|
      t.float :cost
      t.boolean :attendance
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :meeting, null: false, foreign_key: true

      t.timestamps
    end
  end
end
