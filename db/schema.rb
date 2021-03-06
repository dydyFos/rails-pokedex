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

ActiveRecord::Schema.define(version: 20170412130414) do

  create_table "moves", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "type_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["type_id"], name: "index_moves_on_type_id"
  end

  create_table "pokemon_moves", force: :cascade do |t|
    t.integer  "pokemon_id"
    t.integer  "move_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["move_id"], name: "index_pokemon_moves_on_move_id"
    t.index ["pokemon_id"], name: "index_pokemon_moves_on_pokemon_id"
  end

  create_table "pokemons", force: :cascade do |t|
    t.string  "name"
    t.integer "number"
    t.integer "level"
    t.integer "health_points"
    t.integer "type_id"
    t.index ["type_id"], name: "index_pokemons_on_type_id"
  end

  create_table "types", force: :cascade do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
