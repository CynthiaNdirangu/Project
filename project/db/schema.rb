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

ActiveRecord::Schema.define(version: 20160201114159) do

  create_table "admin", force: :cascade do |t|
    t.string   "f_name",     limit: 40, null: false
    t.string   "l_name",     limit: 40, null: false
    t.string   "user_name",  limit: 40, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "headteacher", force: :cascade do |t|
    t.string   "f_name",     limit: 40, null: false
    t.string   "l_name",     limit: 40, null: false
    t.string   "user_name",  limit: 40, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "pages", force: :cascade do |t|
    t.integer  "subject_id", limit: 4
    t.string   "name",       limit: 255
    t.string   "permalink",  limit: 255
    t.integer  "position",   limit: 4
    t.boolean  "visible",    limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  add_index "pages", ["permalink"], name: "index_pages_on_permalink", using: :btree
  add_index "pages", ["subject_id"], name: "index_pages_on_subject_id", using: :btree

  create_table "sections", force: :cascade do |t|
    t.integer  "page_id",      limit: 4
    t.string   "name",         limit: 255
    t.integer  "position",     limit: 4
    t.boolean  "visible",      limit: 1,     default: false
    t.string   "content_type", limit: 255
    t.text     "content",      limit: 65535
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  add_index "sections", ["page_id"], name: "index_sections_on_page_id", using: :btree

  create_table "student", force: :cascade do |t|
    t.string   "f_name",     limit: 40, null: false
    t.string   "l_name",     limit: 40, null: false
    t.string   "user_name",  limit: 40, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "position",   limit: 4
    t.boolean  "visible",    limit: 1,   default: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "teacher", force: :cascade do |t|
    t.string   "f_name",     limit: 40, null: false
    t.string   "l_name",     limit: 40, null: false
    t.string   "user_name",  limit: 40, null: false
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
