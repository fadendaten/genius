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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170511183140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.integer  "gender_id"
    t.string   "title"
    t.string   "name"
    t.string   "pre_name"
    t.string   "street"
    t.string   "additional_line"
    t.string   "zip_code"
    t.string   "string"
    t.string   "city"
    t.integer  "country_id"
    t.integer  "language_id"
    t.string   "phone_number"
    t.string   "cell_phone_number"
    t.string   "email"
    t.date     "birthday"
    t.boolean  "newsletter"
    t.boolean  "mail"
    t.boolean  "employee"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string   "name"
    t.string   "i18n_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "number"
    t.string   "ean"
    t.string   "name"
    t.string   "collection"
    t.string   "program"
    t.string   "size"
    t.string   "colour"
    t.decimal  "price_chf",  precision: 8, scale: 2
    t.decimal  "price_eur",  precision: 8, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

end
