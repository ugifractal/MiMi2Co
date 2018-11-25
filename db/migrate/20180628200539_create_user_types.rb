class CreateUserTypes < ActiveRecord::Migration[5.2]

  def up
    create_table :user_types do |t|
      t.string "name", :limit => 100 #Name of User Type i.e. Inactive, Standard, Administrator
      t.string "description", :limit => 200 #Description of User Type
      t.timestamps
    end
  end

  def down
    drop_table :user_types
  end

end
