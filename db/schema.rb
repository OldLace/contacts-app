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

ActiveRecord::Schema.define(version: 20171210220223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "company"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company"], name: "index_business_contacts_on_company"
    t.index ["first_name"], name: "index_business_contacts_on_first_name"
    t.index ["last_name"], name: "index_business_contacts_on_last_name"
  end

  create_table "personal_contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["first_name"], name: "index_personal_contacts_on_first_name"
    t.index ["last_name"], name: "index_personal_contacts_on_last_name"
  end

end
