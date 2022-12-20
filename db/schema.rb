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

ActiveRecord::Schema.define(version: 2022_12_20_100558) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "effects", force: :cascade do |t|
    t.text "name"
    t.string "descr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "games", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.boolean "fight", default: false
    t.integer "turn", default: 0
    t.integer "user_id"
    t.index ["slug"], name: "index_games_on_slug", unique: true
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "initiative"
    t.integer "hp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_id"
    t.index ["game_id"], name: "index_monsters_on_game_id"
  end

  create_table "player_effects", force: :cascade do |t|
    t.integer "player_id"
    t.integer "effect_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["effect_id"], name: "index_player_effects_on_effect_id"
    t.index ["player_id"], name: "index_player_effects_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.integer "initiative"
    t.integer "hp"
    t.string "languages"
    t.string "perc"
    t.string "inv"
    t.string "ins"
    t.integer "armor"
    t.boolean "conc", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_id"
    t.index ["game_id"], name: "index_players_on_game_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
