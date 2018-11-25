class CreateMeetings < ActiveRecord::Migration[5.2]

  def up
    create_table :meetings do |t|
      t.integer "meeting_type_id" #Meeting Type ID
      t.integer "meeting_status_id" #Meeting Status ID
      t.integer "club_id" #Club ID
      t.string "location", :limit => 200 #meeting location
      t.datetime "date" #date and time of meeting
      t.string "theme", :limit => 200 #theme of meeting
      t.string "address", :limit => 200 #address of meeting
      t.string "arrival_comments", :limit => 200 #meeting arrival comments
      t.timestamps #audit
    end

  end

  def down
    drop_table :meetings
  end

end
