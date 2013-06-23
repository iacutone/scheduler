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

ActiveRecord::Schema.define(:version => 20130622173322) do

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.string   "time"
    t.integer  "counter",    :default => 0
    t.string   "day"
    t.string   "time1"
    t.string   "time2"
    t.string   "time3"
    t.string   "time4"
    t.string   "time5"
    t.string   "time6"
    t.string   "time7"
    t.string   "time8"
    t.string   "time9"
    t.string   "time10"
    t.string   "time11"
    t.string   "time12"
    t.string   "time13"
    t.string   "time14"
    t.string   "time15"
    t.string   "time16"
    t.string   "time17"
    t.string   "time18"
    t.string   "time19"
  end

end
