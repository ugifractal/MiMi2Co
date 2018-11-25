class CreateRoleRanks < ActiveRecord::Migration[5.2]

  def up
    create_table :role_ranks do |t|
      t.string "name", :limit => 200 #Role Rank Name
      t.string "location", :limit => 200 #Role Rank Description
      t.timestamps
    end
  end

  def down
    drop_table :role_ranks
  end
end
