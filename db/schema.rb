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

ActiveRecord::Schema.define(version: 20170512032622) do

  create_table "components", force: :cascade do |t|
    t.string "parent_type"
    t.integer "parent_id"
    t.string "content_type"
    t.integer "content_id"
    t.integer "order"
    t.integer "repeat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["content_type", "content_id"], name: "index_components_on_content_type_and_content_id"
    t.index ["parent_type", "parent_id"], name: "index_components_on_parent_type_and_parent_id"
  end

  create_table "poses", force: :cascade do |t|
    t.string "english_name"
    t.string "sanskrit_name"
    t.string "sanskrit_pronunciation"
    t.integer "difficulty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "modification_of_id"
    t.index ["modification_of_id"], name: "index_poses_on_modification_of_id"
  end

  create_table "routines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", force: :cascade do |t|
    t.integer "pose_id"
    t.integer "direction"
    t.integer "setup_time"
    t.integer "pose_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pose_id"], name: "index_steps_on_pose_id"
  end

end
