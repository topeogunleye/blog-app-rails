# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_18_081719) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Like", force: :cascade do |t|
    t.string "author_id"
    t.string "post_id"
    t.string "createdat"
    t.string "updatedat"
    t.index ["author_id"], name: "index_Like_on_author_id"
  end

  create_table "Post", force: :cascade do |t|
    t.string "author_id"
    t.string "title"
    t.string "text"
    t.string "createdat"
    t.string "updatedat"
    t.string "comments_counter"
    t.string "likes_counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_Post_on_author_id"
  end

  create_table "User", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.string "bio"
    t.string "updatedat"
    t.string "createdat"
    t.string "posts_counter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_User_on_name"
    t.index ["posts_counter"], name: "index_User_on_posts_counter"
  end

  create_table "comments", force: :cascade do |t|
    t.string "author_id"
    t.string "post_id"
    t.string "test"
    t.string "updatedat"
    t.string "createdat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_comments_on_author_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

end
