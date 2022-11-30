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

ActiveRecord::Schema.define(version: 2022_11_30_222910) do

  create_table "games", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.boolean "fight", default: false
    t.index ["slug"], name: "index_games_on_slug", unique: true
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.integer "initiative"
    t.integer "hp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

end
