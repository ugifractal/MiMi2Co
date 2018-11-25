class CreateMeetingDetails < ActiveRecord::Migration[5.2]

  def up
    create_table :meeting_details do |t|
      t.integer "meeting_id" #Meeting ID
      t.integer "role_id" #Role ID
      t.integer "user_id" #User ID
      t.integer "meeting_detail_status_id" #Meeting Detail Status ID
      t.integer "sort_order" #Ranking order of the meting roles
      t.integer "duration_from" #Min length or role (mins)
      t.integer "duration_to" #Max length or role (mins)
      t.string "description", :limit => 200 #Can new members do this role Y/N?
      t.string "comments", :limit => 200 #Can new members do this role Y/N?
      t.timestamps #audit
    end
  end

  def down
    drop_table :meeting_details
  end
end
