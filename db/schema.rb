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

ActiveRecord::Schema.define(version: 20151221080226) do

  create_table "abouts", force: :cascade do |t|
    t.text     "desc",       limit: 65535
    t.integer  "company_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "activities", force: :cascade do |t|
    t.integer  "company_id", limit: 4
    t.text     "desc",       limit: 65535
    t.string   "pic",        limit: 255
    t.integer  "status",     limit: 4,     default: 0
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "awards", force: :cascade do |t|
    t.string   "pic",        limit: 255
    t.string   "name",       limit: 255
    t.integer  "company_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "summary",    limit: 255
    t.text     "content",    limit: 65535
    t.string   "pic",        limit: 255
    t.integer  "user_id",    limit: 4
    t.string   "main_url",   limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.integer  "company_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "customes", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.integer  "company_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "infos", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "content",    limit: 65535
    t.integer  "company_id", limit: 4
    t.integer  "style",      limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "invites", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.text     "content",    limit: 65535
    t.integer  "company_id", limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "name",       limit: 255
    t.string   "tel",        limit: 255
    t.string   "content",    limit: 255
    t.integer  "company_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "product_pics", force: :cascade do |t|
    t.string   "image",      limit: 255
    t.integer  "product_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.text     "content",       limit: 65535
    t.integer  "company_id",    limit: 4
    t.string   "pic",           limit: 255
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.integer  "price",         limit: 4
    t.string   "factory",       limit: 255
    t.string   "weight",        limit: 255
    t.string   "origin",        limit: 255
    t.string   "alco_level",    limit: 255
    t.string   "standard",      limit: 255
    t.string   "box",           limit: 255
    t.string   "flavor",        limit: 255
    t.string   "material",      limit: 255
    t.string   "detail_qrcode", limit: 255
    t.integer  "scroll",        limit: 4,     default: 0
    t.integer  "num",           limit: 4,     default: 0
  end

  create_table "sliders", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "pic",        limit: 255
    t.integer  "company_id", limit: 4
    t.integer  "style",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "ueditor_images", force: :cascade do |t|
    t.string "image", limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.string   "password_digest", limit: 255
    t.string   "token",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
