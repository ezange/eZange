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

ActiveRecord::Schema.define(:version => 20121120224324) do

  create_table "charities", :force => true do |t|
    t.string   "charity_name"
    t.integer  "charity_street_number"
    t.string   "charity_street_name"
    t.string   "charity_city"
    t.string   "charity_state"
    t.integer  "charity_zip"
    t.string   "charity_country"
    t.integer  "charity_phone_number"
    t.string   "charity_type"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "judgements", :force => true do |t|
    t.integer  "memebr_id"
    t.integer  "sin_id"
    t.date     "judgement_date"
    t.time     "judgement_time"
    t.string   "jugement"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "memebers", :force => true do |t|
    t.string   "user_name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "password"
    t.integer  "street_number"
    t.string   "street_name"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "email_address"
    t.string   "religon"
    t.string   "education_level"
    t.string   "partner"
    t.string   "employment_status"
    t.integer  "age"
    t.integer  "number_of_children"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "repentances", :force => true do |t|
    t.integer  "sin_id"
    t.string   "time_donation"
    t.string   "monetary_donation"
    t.integer  "charity_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "sins", :force => true do |t|
    t.integer  "member_id"
    t.string   "title"
    t.date     "post_date"
    t.time     "post_time"
    t.date     "sin_date"
    t.time     "sin_time"
    t.string   "sin"
    t.integer  "sin_street_number"
    t.string   "sin_street_name"
    t.string   "sin_city"
    t.string   "sin_state"
    t.integer  "sin_zip"
    t.string   "sin_country"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
