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

ActiveRecord::Schema.define(version: 20140416180403) do

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "candidates", force: true do |t|
    t.string   "name"
    t.integer  "party_id"
    t.string   "avatar"
    t.string   "wikipedia_link"
    t.string   "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "approved",       default: true
  end

  add_index "candidates", ["party_id"], name: "index_candidates_on_party_id"

  create_table "candidates_constituencies", force: true do |t|
    t.integer  "candidate_id"
    t.integer  "constituency_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "candidates_constituencies", ["candidate_id"], name: "index_candidates_constituencies_on_candidate_id"
  add_index "candidates_constituencies", ["constituency_id"], name: "index_candidates_constituencies_on_constituency_id"

  create_table "constituencies", force: true do |t|
    t.string   "name"
    t.integer  "state_id"
    t.string   "wikipedia_link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "constituencies", ["state_id"], name: "index_constituencies_on_state_id"

  create_table "parties", force: true do |t|
    t.string   "name"
    t.string   "symbol"
    t.string   "manifesto"
    t.string   "official_website"
    t.string   "wikipedia_link"
    t.string   "president"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "states", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
