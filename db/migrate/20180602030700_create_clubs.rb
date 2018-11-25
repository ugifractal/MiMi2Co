class CreateClubs < ActiveRecord::Migration[5.2]

  def up
    create_table :clubs do |t|
      t.string "name", :limit => 200 #club name
      t.string "description", :limit => 200 #club description
      t.string "city", :limit => 200 #club city
      t.string "country", :limit => 100 #club country
      t.integer "club_type_id" #xxx
      t.date "start_date" #xxx
      t.date "end_date" #xxx
      t.string "address", :limit => 200 #xxx
      t.string "district", :limit => 100 #xxx
      t.string "division", :limit => 100 #xxx
      t.string "area", :limit => 100 #xxx
      t.string "registration_number", :limit => 100 #xxx
      t.string "website", :limit => 200 #xxx
      t.string "email", :limit => 200 #xxx
      t.string "mission", :limit => 200 #xxx
      t.string "facebook", :limit => 200 #xxx
      t.string "display_name", :limit => 200 #xxx
      t.string "logo", :limit => 200 #xxx
      t.integer "role_rank_id" #Role Rank ID
      t.timestamps #audit
    end
  end

  def down
      drop_table :clubs
  end

end
