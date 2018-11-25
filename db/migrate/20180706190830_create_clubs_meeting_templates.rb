class CreateClubsMeetingTemplates < ActiveRecord::Migration[5.2]
  def up
    create_table :clubs_meeting_templates do |t|
      t.integer "club_id" #Club ID
      t.integer "meeting_template_id" #Meeting Template ID
      t.string "comments", :limit => 200 #xxx
      t.timestamps #audit
    end
    add_index("clubs_meeting_templates", ["club_id", "meeting_template_id"])
  end

  def down
    drop_table :clubs_meeting_templates
  end
end
