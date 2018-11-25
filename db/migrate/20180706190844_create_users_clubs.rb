class CreateUsersClubs < ActiveRecord::Migration[5.2]

  def up
    create_table :users_clubs do |t|
      t.integer "user_id" #Meeting Template ID
      t.integer "club_id" #Club ID
      t.integer "user_type_id" #User Type ID
      t.date "start_date" #Min length or role (mins)
      t.date "end_date" #Max length or role (mins)
      t.string "comments", :limit => 200 #Administration comments
      t.timestamps #audit
    end
    add_index("users_clubs", ["user_id", "club_id"])

  end

  def down
    drop_table :users_clubs
  end

end
