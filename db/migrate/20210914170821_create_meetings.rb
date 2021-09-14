class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|
      t.string :title, default: "New Meeting"
      t.integer :minutes_duration, default: 30
      t.datetime :start_time, null: false, default: DateTime.now
      t.float :cost, default: 0

      t.timestamps
    end
  end
end
