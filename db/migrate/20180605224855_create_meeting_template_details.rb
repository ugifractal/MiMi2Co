class CreateMeetingTemplateDetails < ActiveRecord::Migration[5.2]

  def up
    create_table :meeting_template_details do |t|
      t.integer "meeting_template_id" #Meeting Template ID
      t.integer "role_id" #Role ID
      t.integer "sort_order" #Ranking order of the meeting roles
      t.integer "duration_from" #Min length or role (mins)
      t.integer "duration_to" #Max length or role (mins)
      t.string "description", :limit => 200 #Description for printing
      t.string "comments", :limit => 200 #Administration comments
      t.timestamps #audit
    end
  end

  def down
    drop_table :meeting_template_details
  end

end
