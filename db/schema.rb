# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_12_011933) do

  create_table "bookmarks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "house_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["house_id"], name: "index_bookmarks_on_house_id"
    t.index ["user_id", "house_id"], name: "index_bookmarks_on_user_id_and_house_id", unique: true
    t.index ["user_id"], name: "index_bookmarks_on_user_id"
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "category_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_valid", default: true, null: false
  end

  create_table "entries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "room_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_entries_on_room_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "favorites", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tweet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tweet_id"], name: "index_favorites_on_tweet_id"
    t.index ["user_id", "tweet_id"], name: "index_favorites_on_user_id_and_tweet_id", unique: true
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "house_areas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "house_categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "house_id"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_house_categories_on_category_id"
    t.index ["house_id"], name: "index_house_categories_on_house_id"
  end

  create_table "house_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.text "content", null: false
    t.bigint "user_id", null: false
    t.bigint "house_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["house_id"], name: "index_house_comments_on_house_id"
    t.index ["user_id", "house_id", "created_at"], name: "index_house_comments_on_user_id_and_house_id_and_created_at"
    t.index ["user_id"], name: "index_house_comments_on_user_id"
  end

  create_table "houses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "postcode", null: false
    t.integer "prefecture_code", null: false
    t.string "address", null: false
    t.integer "domitory_price"
    t.integer "private_price"
    t.string "copy"
    t.text "introduction"
    t.boolean "is_valid", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "house_image"
    t.json "images"
    t.bigint "house_area_id", null: false
    t.index ["house_area_id"], name: "index_houses_on_house_area_id"
  end

  create_table "messages", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "room_id", null: false
    t.text "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["room_id"], name: "index_messages_on_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "relationships", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "house_id", null: false
    t.string "title", null: false
    t.text "content"
    t.date "visit_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "story_image"
    t.json "images"
    t.index ["house_id"], name: "index_stories_on_house_id"
    t.index ["user_id", "house_id", "created_at"], name: "index_stories_on_user_id_and_house_id_and_created_at"
    t.index ["user_id"], name: "index_stories_on_user_id"
  end

  create_table "story_bookmarks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "story_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["story_id"], name: "index_story_bookmarks_on_story_id"
    t.index ["user_id", "story_id"], name: "index_story_bookmarks_on_user_id_and_story_id", unique: true
    t.index ["user_id"], name: "index_story_bookmarks_on_user_id"
  end

  create_table "story_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "story_id", null: false
    t.text "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["story_id"], name: "index_story_comments_on_story_id"
    t.index ["user_id", "story_id", "created_at"], name: "index_story_comments_on_user_id_and_story_id_and_created_at"
    t.index ["user_id"], name: "index_story_comments_on_user_id"
  end

  create_table "to_go_lists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "house_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["house_id"], name: "index_to_go_lists_on_house_id"
    t.index ["user_id", "house_id"], name: "index_to_go_lists_on_user_id_and_house_id", unique: true
    t.index ["user_id"], name: "index_to_go_lists_on_user_id"
  end

  create_table "tweet_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "tweet_id", null: false
    t.text "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tweet_id"], name: "index_tweet_comments_on_tweet_id"
    t.index ["user_id", "tweet_id", "created_at"], name: "index_tweet_comments_on_user_id_and_tweet_id_and_created_at"
    t.index ["user_id"], name: "index_tweet_comments_on_user_id"
  end

  create_table "tweets", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "content", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "tweet_picture"
    t.index ["user_id", "created_at"], name: "index_tweets_on_user_id_and_created_at"
    t.index ["user_id"], name: "index_tweets_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "account_name", null: false
    t.string "display_name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.text "introduction"
    t.boolean "is_valid", default: true, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.boolean "guest", default: false
    t.index ["account_name"], name: "index_users_on_account_name", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "bookmarks", "houses"
  add_foreign_key "bookmarks", "users"
  add_foreign_key "entries", "rooms"
  add_foreign_key "entries", "users"
  add_foreign_key "favorites", "tweets"
  add_foreign_key "favorites", "users"
  add_foreign_key "house_categories", "categories"
  add_foreign_key "house_categories", "houses"
  add_foreign_key "house_comments", "houses"
  add_foreign_key "house_comments", "users"
  add_foreign_key "houses", "house_areas"
  add_foreign_key "messages", "rooms"
  add_foreign_key "messages", "users"
  add_foreign_key "stories", "houses"
  add_foreign_key "stories", "users"
  add_foreign_key "story_bookmarks", "stories"
  add_foreign_key "story_bookmarks", "users"
  add_foreign_key "story_comments", "stories"
  add_foreign_key "story_comments", "users"
  add_foreign_key "to_go_lists", "houses"
  add_foreign_key "to_go_lists", "users"
  add_foreign_key "tweet_comments", "tweets"
  add_foreign_key "tweet_comments", "users"
  add_foreign_key "tweets", "users"
end
