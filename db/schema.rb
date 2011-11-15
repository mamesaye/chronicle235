# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111114162749) do

  create_table "app235s", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clip_apps", :force => true do |t|
    t.integer  "clip_list_id"
    t.integer  "medium_id"
    t.integer  "user_id"
    t.text     "time_in"
    t.text     "time_out"
    t.integer  "sot_number"
    t.text     "description"
    t.boolean  "deleted"
    t.datetime "created_at"
    t.datetime "updated"
    t.datetime "updated_at"
  end

  create_table "clips", :force => true do |t|
    t.integer  "clip_list_id"
    t.integer  "medium_id",    :null => false
    t.integer  "user_id"
    t.text     "time_in",      :null => false
    t.text     "time_out",     :null => false
    t.text     "filename"
    t.integer  "shot_number"
    t.text     "description"
    t.boolean  "deleted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demo2users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demousers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
