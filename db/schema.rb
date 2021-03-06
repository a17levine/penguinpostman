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

ActiveRecord::Schema.define(:version => 20130802210825) do

  create_table "mailings", :force => true do |t|
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.integer  "pages"
    t.string   "file_path"
    t.string   "user_email"
    t.string   "user_firstname"
    t.string   "user_lastname"
    t.string   "user_street_1"
    t.string   "user_street_2"
    t.string   "user_city"
    t.string   "user_state"
    t.string   "user_zip"
    t.string   "recipient_firstname"
    t.string   "recipient_lastname"
    t.string   "recipient_street_1"
    t.string   "recipient_street_2"
    t.string   "recipient_city"
    t.string   "recipient_state"
    t.string   "recipient_zip"
    t.string   "stripe_id"
    t.boolean  "order_processed"
  end

end
