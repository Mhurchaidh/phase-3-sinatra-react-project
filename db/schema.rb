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

ActiveRecord::Schema.define(version: 2023_02_16_003745) do

  create_table "battlegrounds", force: :cascade do |t|
    t.integer "character_id"
    t.integer "enemy_id"
    t.integer "turn_counter"
    t.string "initiator"
    t.string "target"
    t.integer "health_change"
    t.string "skirmish_log"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["character_id"], name: "index_battlegrounds_on_character_id"
    t.index ["enemy_id"], name: "index_battlegrounds_on_enemy_id"
  end

  create_table "campaigns", force: :cascade do |t|
  end

  create_table "characters", force: :cascade do |t|
    t.integer "party_id"
    t.string "name"
    t.string "character_class"
    t.integer "health"
    t.integer "max_health"
    t.integer "mana"
    t.integer "phys_attack"
    t.integer "mag_attack"
    t.integer "faith"
    t.string "ability_name"
    t.integer "ability_cost"
    t.integer "ability_cd"
    t.string "ability_description"
    t.boolean "taunting?", default: false
    t.boolean "dead", default: false
    t.index ["party_id"], name: "index_characters_on_party_id"
  end

  create_table "enemies", force: :cascade do |t|
    t.integer "enemy_party_id"
    t.string "name"
    t.string "enemy_class"
    t.integer "health"
    t.integer "max_health"
    t.integer "mana"
    t.integer "phys_attack"
    t.integer "mag_attack"
    t.string "ability_name"
    t.integer "ability_cost"
    t.integer "ability_cd"
    t.string "ability_description"
    t.boolean "dead", default: false
    t.index ["enemy_party_id"], name: "index_enemies_on_enemy_party_id"
  end

  create_table "enemy_parties", force: :cascade do |t|
    t.integer "campaign_id"
    t.index ["campaign_id"], name: "index_enemy_parties_on_campaign_id"
  end

  create_table "parties", force: :cascade do |t|
    t.integer "campaign_id"
    t.index ["campaign_id"], name: "index_parties_on_campaign_id"
  end

end
