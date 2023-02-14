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

ActiveRecord::Schema.define(version: 2023_02_14_174515) do

  create_table "battlegrounds", force: :cascade do |t|
    t.integer "character_id"
    t.integer "enemy_id"
    t.integer "turn_counter"
    t.string "initiator"
    t.string "target"
    t.index ["character_id"], name: "index_battlegrounds_on_character_id"
    t.index ["enemy_id"], name: "index_battlegrounds_on_enemy_id"
  end

  create_table "characters", force: :cascade do |t|
    t.integer "party_id"
    t.integer "health"
    t.integer "mana"
    t.integer "phys_attack"
    t.integer "mag_attack"
    t.integer "faith"
    t.integer "ability_cd"
    t.string "ability_name"
    t.text "ability_description"
    t.string "character_name"
    t.string "character_class"
    t.integer "ability_cost"
    t.index ["party_id"], name: "index_characters_on_party_id"
  end

  create_table "enemies", force: :cascade do |t|
    t.integer "enemy_party_id"
    t.integer "health"
    t.integer "phys_attack"
    t.integer "mag_attack"
    t.integer "ability_cd"
    t.string "ability_name"
    t.text "ability_description"
    t.string "enemy_name"
    t.string "enemy_class"
    t.integer "ability_cost"
    t.integer "mana"
    t.index ["enemy_party_id"], name: "index_enemies_on_enemy_party_id"
  end

  create_table "enemy_parties", force: :cascade do |t|
    t.integer "power_level"
    t.integer "enemy_count"
  end

  create_table "parties", force: :cascade do |t|
    t.integer "power_level"
    t.integer "character_count"
  end

end
