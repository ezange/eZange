# encoding: UTF-8
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

ActiveRecord::Schema.define(:version => 20121124174035) do

  create_table "charities", :force => true do |t|
    t.string   "name"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "country"
    t.integer  "phone_number"
    t.string   "charity_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "judgements", :force => true do |t|
    t.integer  "member_id"
    t.integer  "sin_id"
    t.datetime "timestamp"
    t.text     "judgement"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "judgements", ["member_id"], :name => "index_judgements_on_member_id"
  add_index "judgements", ["sin_id"], :name => "index_judgements_on_sin_id"

  create_table "members", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "password"
    t.integer  "street_number"
    t.string   "street_name"
    t.integer  "zipcode"
    t.string   "email"
    t.string   "religon"
    t.string   "education_level"
    t.string   "partner"
    t.string   "emloyment_status"
    t.integer  "age"
    t.string   "number_of_children"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "repentances", :force => true do |t|
    t.integer  "charity_id"
    t.integer  "sin_id"
    t.string   "time_donation"
    t.string   "money_donation"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "repentances", ["charity_id"], :name => "index_repentances_on_charity_id"
  add_index "repentances", ["sin_id"], :name => "index_repentances_on_sin_id"

  create_table "sins", :force => true do |t|
    t.integer  "member_id"
    t.string   "title"
    t.date     "sin_date"
    t.time     "sin_time"
    t.integer  "sin_street_number"
    t.string   "sin_street_name"
    t.string   "sin_city"
    t.string   "sin_state"
    t.integer  "sin_zipcode"
    t.string   "sin_country"
    t.text     "sin"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "sins", ["member_id"], :name => "index_sins_on_member_id"

end
