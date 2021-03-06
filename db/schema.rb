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

ActiveRecord::Schema.define(version: 20151128070715) do

  create_table "imgs", force: :cascade do |t|
    t.integer  "koma_id"
    t.string   "image_url",                null: false
    t.string   "page_url",                 null: false
    t.integer  "x",          default: 0
    t.integer  "y",          default: 0
    t.integer  "w",          default: 300
    t.integer  "h",          default: 200
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "komas", force: :cascade do |t|
    t.integer  "yonkoma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "serifs", force: :cascade do |t|
    t.integer  "koma_id"
    t.string   "str",                      null: false
    t.integer  "x",          default: 0
    t.integer  "y",          default: 0
    t.integer  "w",          default: 80
    t.integer  "h",          default: 130
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "users", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "email",      null: false
    t.string   "password",   null: false
    t.string   "username",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yonkomas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
