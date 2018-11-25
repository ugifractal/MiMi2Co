class CreateClubExecutiveUsers < ActiveRecord::Migration[5.2]

  def up
    create_table :club_executive_users do |t|
      t.integer "user_id" #User  ID
      t.integer "club_id" #Club ID
      t.integer "role_id" #Role ID
      t.date "start_date" #start date of executive
      t.date "end_date" #end date of executive
      t.string "comments", :limit => 200 #xxx
      t.timestamps #audit

    end
    #add_index("club_executive_users", ["user_id", "role_id", "club_id"])

  end

  def down
      drop_table :club_executive_users
  end

end
