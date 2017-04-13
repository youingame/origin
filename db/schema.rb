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

ActiveRecord::Schema.define(version: 20170327201701) do

  create_table "games", force: :cascade do |t|
    t.integer  "step"
    t.string   "man_name"
    t.string   "woman_name"
    t.integer  "man_points"
    t.integer  "woman_points"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "type_of"
    t.boolean  "m_oral",       default: true
    t.boolean  "m_anal"
    t.boolean  "m_bdsm"
    t.boolean  "m_fist"
    t.boolean  "m_pie"
    t.boolean  "m_electro"
    t.boolean  "w_oral",       default: true
    t.boolean  "w_anal"
    t.boolean  "w_bdsm"
    t.boolean  "w_fist"
    t.boolean  "w_pie"
    t.boolean  "w_electro"
    t.boolean  "g_vibrator"
    t.boolean  "g_anal_plug"
    t.boolean  "g_vibro_pule"
    t.boolean  "g_massager"
    t.boolean  "g_strapon"
    t.boolean  "g_bondage"
    t.boolean  "g_pump"
    t.boolean  "g_plet"
    t.boolean  "g_klyap"
    t.boolean  "g_electro"
    t.boolean  "g_vosk"
    t.boolean  "g_latex"
    t.boolean  "g_rashiritel"
    t.string   "winner"
  end

  create_table "mananalquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manbdsmquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manelectroquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manfistquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manoralquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manpiequestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "step"
    t.integer  "type_of"
  end

  create_table "womananalquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "womanbdsmquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "womanelectroquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "womanfistquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "womanoralquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "womanpiequestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "womanquestions", force: :cascade do |t|
    t.string   "question"
    t.integer  "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "step"
    t.integer  "type_of"
  end

end
