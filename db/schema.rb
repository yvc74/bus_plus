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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101223031542) do

  create_table "drivers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "license_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "passengers", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "path_elements", :force => true do |t|
    t.integer  "path_id"
    t.integer  "waypoint_id"
    t.integer  "index"
    t.integer  "path_size"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paths", :force => true do |t|
    t.integer  "passenger_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "seats_available"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "driver_id"
  end

  create_table "waypoints", :force => true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "arrival_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
