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

ActiveRecord::Schema.define(version: 20160930154447) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.string   "player_name"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "strength"
    t.integer  "dexterity"
    t.integer  "constitution"
    t.integer  "intelligence"
    t.integer  "wisdom"
    t.integer  "charisma"
    t.string   "background"
    t.string   "race"
    t.string   "alignment"
    t.string   "experience_points"
    t.string   "personality_traits"
    t.string   "ideals"
    t.string   "bonds"
    t.string   "flaws"
    t.string   "prof_lang"
    t.string   "features_trait"
    t.string   "equipment"
    t.integer  "max_hit_points"
    t.integer  "current_hit_points"
    t.integer  "temporary_hit_points"
    t.string   "hit_dice"
    t.string   "player_class"
    t.integer  "game_id"
    t.integer  "level"
    t.index ["game_id"], name: "index_characters_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "rpg_system"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
