class CreateUserMeetingAvailabilities < ActiveRecord::Migration[5.2]
  def up
    create_table :user_meeting_availabilities do |t|
      t.integer "user_id" #User ID
      t.integer "meeting_id" #Meeting ID
      t.string "status", :limit => 200  #Status
      t.timestamps #audit
    end
  end

  def down
    drop_table :user_meeting_availabilities
  end

end
