class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|

      t.timestamps,
      t.string :title, default: "New Meeting"
      t.int :minutes_duration, default: 30
      t.datetime :start_time, null: false, :default => DateTime.now
      t.float :cost, default: 0

    end
  end
end
