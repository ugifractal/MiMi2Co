class CreateMeetingStatuses < ActiveRecord::Migration[5.2]

  def up
    create_table :meeting_statuses do |t|
      t.string "name", :limit => 100 #Name of Meeting Status
      t.string "description", :limit => 200 #Description of Meeting Status
      t.timestamps #audit
    end
  end

  def down
    drop_table :meeting_statuses
  end

end
