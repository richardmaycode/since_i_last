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

ActiveRecord::Schema.define(version: 2021_06_07_161440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countdowns", force: :cascade do |t|
    t.string "title", null: false
    t.string "icon"
    t.integer "color", null: false
    t.datetime "event_date", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer "amount", default: 0, null: false
    t.integer "goal_type", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "watches", force: :cascade do |t|
    t.string "title", null: false
    t.string "icon", default: "test", null: false
    t.integer "color"
    t.datetime "executed", null: false
    t.integer "goal", default: 0, null: false
    t.integer "goal_type", default: 0, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
