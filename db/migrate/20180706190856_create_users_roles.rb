class CreateUsersRoles < ActiveRecord::Migration[5.2]

  def up
    create_table :users_roles do |t|
      t.integer "user_id" #user ID
      t.integer "role_id" #role ID
      t.integer "club_id" #allocate the above to a club
      t.string "comments", :limit => 200 #xxx
      t.timestamps #audit
    end
    add_index("users_roles", ["user_id", "role_id", "club_id"])
  end

  def down
    drop_table :users_roles
  end

end
