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

ActiveRecord::Schema.define(:version => 20110710015255) do

  create_table "services", :force => true do |t|
    t.string   "type"
    t.string   "hours"
    t.boolean  "organization"
    t.string   "commments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.string   "IDnumber"
    t.string   "graduationyear"
    t.string   "grade"
    t.string   "address1"
    t.string   "address2"
    t.string   "zip"
    t.string   "email1"
    t.boolean  "confirmed1"
    t.string   "email2"
    t.boolean  "confirmed2"
    t.string   "telephone1"
    t.string   "telephone2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
