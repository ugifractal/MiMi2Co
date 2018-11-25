class CreateMeetingTemplates < ActiveRecord::Migration[5.2]

  def up
    create_table :meeting_templates do |t|
      t.string "name" #Meeting ID
      t.string "description" #Role ID
      t.integer "sort_order" #Ranking order of the meting roles
      t.timestamps #audit
    end
  end

  def down
    drop_table :meeting_templates
  end

end
