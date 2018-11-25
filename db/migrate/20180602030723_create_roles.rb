class CreateRoles < ActiveRecord::Migration[5.2]

  def up
    create_table :roles do |t|
      t.string "name", :limit => 200 #Role Name
      t.string "description", :limit => 200 #xxx
      t.string "code", :limit => 10 #short code for role i.e. SPE, SEV, CHA, TOA
      t.integer "role_type_id" #Role Type ID
      t.string "status", :limit => 100 #status of role
      t.integer "assignment_order" #order the roles are assigned
      t.string "key_role_flg", :limit => 1 #Is the role a key role for this meeting Y/N?
      t.string "new_user_penalty_flg", :limit => 1 #Can new members do this role Y/N?
      t.string "repeater_flg", :limit => 1 #Y/N flag to indicate of role can be repeated in a meeting
      t.string "print_flg", :limit => 1 #Y/N flag to indicate if the role is to be printed out on agenda
      t.timestamps #audit

    end
  end

  def down
    drop_table :roles
  end

end
