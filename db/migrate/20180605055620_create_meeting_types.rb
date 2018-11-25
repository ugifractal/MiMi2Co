class CreateMeetingTypes < ActiveRecord::Migration[5.2]

  def up
    create_table :meeting_types do |t|
      t.string "name", :limit => 100 #Name of Meeting Type i.e. Toastmaster, Speechcraft, Committee, Competition.
      t.string "description", :limit => 200 #Description of Meeting Type
      t.timestamps #audit
    end
  end

  def down
    drop_table :meeting_types
  end
end
