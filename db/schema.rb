# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_10_31_224009) do

  create_table "club_executive_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "club_id"
    t.integer "role_id"
    t.date "start_date"
    t.date "end_date"
    t.string "comments", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "club_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "description", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clubs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 200
    t.string "description", limit: 200
    t.string "city", limit: 200
    t.string "country", limit: 100
    t.integer "club_type_id"
    t.date "start_date"
    t.date "end_date"
    t.string "address", limit: 200
    t.string "district", limit: 100
    t.string "division", limit: 100
    t.string "area", limit: 100
    t.string "registration_number", limit: 100
    t.string "website", limit: 200
    t.string "email", limit: 200
    t.string "mission", limit: 200
    t.string "facebook", limit: 200
    t.string "display_name", limit: 200
    t.string "logo", limit: 200
    t.integer "role_rank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clubs_meeting_templates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "club_id"
    t.integer "meeting_template_id"
    t.string "comments", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["club_id", "meeting_template_id"], name: "index_clubs_meeting_templates_on_club_id_and_meeting_template_id"
  end

  create_table "meeting_detail_statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "description", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meeting_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "meeting_id"
    t.integer "role_id"
    t.integer "user_id"
    t.integer "meeting_detail_status_id"
    t.integer "sort_order"
    t.integer "duration_from"
    t.integer "duration_to"
    t.string "description", limit: 200
    t.string "comments", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meeting_statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "description", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meeting_template_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "meeting_template_id"
    t.integer "role_id"
    t.integer "sort_order"
    t.integer "duration_from"
    t.integer "duration_to"
    t.string "description", limit: 200
    t.string "comments", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meeting_templates", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meeting_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "description", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meetings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "meeting_type_id"
    t.integer "meeting_status_id"
    t.integer "club_id"
    t.string "location", limit: 200
    t.datetime "date"
    t.string "theme", limit: 200
    t.string "address", limit: 200
    t.string "arrival_comments", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "role_rank_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "role_rank_id"
    t.integer "role_id"
    t.integer "sort_order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "role_ranks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 200
    t.string "location", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "role_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "description", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 200
    t.string "description", limit: 200
    t.string "code", limit: 10
    t.integer "role_type_id"
    t.string "status", limit: 100
    t.integer "assignment_order"
    t.string "key_role_flg", limit: 1
    t.string "new_user_penalty_flg", limit: 1
    t.string "repeater_flg", limit: 1
    t.string "print_flg", limit: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_meeting_availabilities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "meeting_id"
    t.string "status", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", limit: 100
    t.string "description", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", limit: 200
    t.string "username", limit: 200
    t.string "password_digest"
    t.string "first_name", limit: 100
    t.string "last_name", limit: 100
    t.string "display_name", limit: 200
    t.date "dob"
    t.date "start_date"
    t.date "end_date"
    t.string "mobile", limit: 50
    t.string "comments", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users_clubs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "club_id"
    t.integer "user_type_id"
    t.date "start_date"
    t.date "end_date"
    t.string "comments", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "club_id"], name: "index_users_clubs_on_user_id_and_club_id"
  end

  create_table "users_roles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.integer "club_id"
    t.string "comments", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "role_id", "club_id"], name: "index_users_roles_on_user_id_and_role_id_and_club_id"
  end

end
