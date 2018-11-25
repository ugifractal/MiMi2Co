class CreateUsers < ActiveRecord::Migration[5.2]

  def up
    create_table :users do |t|
      t.string "email", :limit => 200 #user email
      t.string "username", :limit => 200 #user email
      t.string "password_digest" #user password
      t.string "first_name", :limit => 100 #user first name
      t.string "last_name", :limit => 100 #user last name
      t.string "display_name", :limit => 200 #user display name
      t.date "dob", :default => '' #user date of birth
      t.date "start_date" #date user joined Toastmasers
      t.date "end_date" #date user left Toastmasers 
      t.string "mobile", :limit => 50 #user mobile
      t.string "comments", :limit => 200 #user comments
      t.timestamps #audit
    end

  end

  def down
    drop_table :users
  end

end
