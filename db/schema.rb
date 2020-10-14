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

ActiveRecord::Schema.define(version: 2020_10_14_163753) do

  create_table "comments", force: :cascade do |t|
    t.string "text"
    t.integer "resource_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
  end

  create_table "playlists_resources", id: false, force: :cascade do |t|
    t.integer "playlist_id", null: false
    t.integer "resource_id", null: false
    t.index ["playlist_id", "resource_id"], name: "index_playlists_resources_on_playlist_id_and_resource_id"
    t.index ["resource_id", "playlist_id"], name: "index_playlists_resources_on_resource_id_and_playlist_id"
  end

  create_table "resources", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "lowerGradeBound"
    t.integer "upperGradeBound"
    t.string "subject"
    t.string "url"
    t.string "videoUrl"
    t.integer "rating"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
