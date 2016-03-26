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

ActiveRecord::Schema.define(version: 20160326173706) do

  create_table "alarm_companies", force: :cascade do |t|
    t.string   "name"
    t.string   "representative_name"
    t.string   "operator_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "incident_id"
    t.string   "alarm_company_type"
  end

  add_index "alarm_companies", ["incident_id"], name: "index_alarm_companies_on_incident_id"

  create_table "incident_and_causes", force: :cascade do |t|
    t.integer  "incident_id"
    t.integer  "incident_cause_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "incident_causes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "issue_type"
    t.string   "issue"
  end

  create_table "incidents", force: :cascade do |t|
    t.text     "location"
    t.string   "date"
    t.string   "time"
    t.text     "officer_on_duty"
    t.string   "responders_called"
    t.string   "responders_arrived_name"
    t.string   "guard_signature"
    t.string   "supervisor_name"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.text     "other_type_incident"
    t.text     "dialog_box"
  end

  create_table "other_parties", force: :cascade do |t|
    t.string   "type"
    t.string   "name"
    t.string   "sex"
    t.string   "age"
    t.string   "height"
    t.string   "weight"
    t.string   "eye_color"
    t.string   "hair_color"
    t.string   "facial_hair"
    t.text     "clothes_description"
    t.text     "other_details"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "incident_id"
    t.string   "other_party_type"
  end

  add_index "other_parties", ["incident_id"], name: "index_other_parties_on_incident_id"

  create_table "police", force: :cascade do |t|
    t.boolean  "services_called"
    t.boolean  "police_response"
    t.boolean  "police_arrival"
    t.string   "officer_name"
    t.string   "officer_badge"
    t.string   "time_of_call"
    t.string   "time_of_arrival"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "incident_id"
  end

  add_index "police", ["incident_id"], name: "index_police_on_incident_id"

  create_table "suspects", force: :cascade do |t|
    t.string   "name"
    t.string   "sex"
    t.string   "age"
    t.string   "height"
    t.string   "weight"
    t.string   "eye_color"
    t.string   "hair_color"
    t.string   "facial_hair"
    t.text     "clothes_description"
    t.text     "other_details"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "incident_id"
    t.string   "suspect_type"
  end

  add_index "suspects", ["incident_id"], name: "index_suspects_on_incident_id"

end
