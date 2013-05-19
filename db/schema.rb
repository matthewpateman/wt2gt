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

ActiveRecord::Schema.define(:version => 20130519210507) do

  create_table "friends", :force => true do |t|
    t.integer  "friend"
    t.integer  "friended"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "price"
    t.string   "price_currency"
    t.integer  "merchant_id"
    t.string   "url"
    t.boolean  "private"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.date     "dob"
    t.string   "profile_image"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "address_street_one"
    t.string   "address_street_two"
    t.string   "address_street_three"
    t.string   "address_city"
    t.string   "address_postcode"
    t.string   "address_country"
    t.integer  "mobile_phone"
    t.string   "password_digest"
    t.string   "address_state"
  end

end
