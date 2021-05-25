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

ActiveRecord::Schema.define(version: 2021_05_25_135114) do

  create_table "championships", force: :cascade do |t|
    t.datetime "date"
    t.integer "year"
    t.string "location"
    t.integer "winner_id"
    t.integer "match_id"
    t.index ["match_id"], name: "index_championships_on_match_id"
    t.index ["winner_id"], name: "index_championships_on_winner_id"
  end

  create_table "clubs", force: :cascade do |t|
    t.string "name"
  end

  create_table "matches", force: :cascade do |t|
    t.string "name"
    t.string "score"
    t.integer "club_1_id"
    t.integer "club_2_id"
    t.index ["club_1_id"], name: "index_matches_on_club_1_id"
    t.index ["club_2_id"], name: "index_matches_on_club_2_id"
  end

end
