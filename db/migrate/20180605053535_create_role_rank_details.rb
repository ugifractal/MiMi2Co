class CreateRoleRankDetails < ActiveRecord::Migration[5.2]

  def up
    create_table :role_rank_details do |t|
      t.integer "role_rank_id" #Role Rank ID
      t.integer "role_id" #Role ID
      t.integer "sort_order" #Ranking order of the roles
      t.timestamps #audit
    end
  end

  def down
    drop_table :role_rank_details
  end

end
