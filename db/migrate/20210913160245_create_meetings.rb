class CreateMeetings < ActiveRecord::Migration[6.1]
  def change
    create_table :meetings do |t|

      t.timestamps,
      t.string :title,
      t.int :minutes_duration,
      t.datetime :start_time
      t.float :cost, default: 0

    end
  end
end
