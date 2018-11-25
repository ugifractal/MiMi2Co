class CreateRoleTypes < ActiveRecord::Migration[5.2]

  def up
    create_table :role_types do |t|
      t.string "name", :limit => 100 #Name of Role Type
      t.string "description", :limit => 200 #Description of Role Type
      t.timestamps #audit
    end
  end

  def down
    drop_table :role_types
  end

end
