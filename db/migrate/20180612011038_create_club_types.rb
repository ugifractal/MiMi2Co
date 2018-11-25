class CreateClubTypes < ActiveRecord::Migration[5.2]

def up
  create_table :club_types do |t|
    t.string "name", :limit => 100 #Name of Club Status i.e. Active, Inactive
    t.string "description", :limit => 200 #Description of Club Status
    t.timestamps #audit
  end
end

def down
  drop_table :club_types
end

end
