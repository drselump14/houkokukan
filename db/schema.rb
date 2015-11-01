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

ActiveRecord::Schema.define(version: 20151101042846) do

  create_table "links", force: :cascade do |t|
    t.string   "link_id",          limit: 255
    t.string   "start_node_id",    limit: 255
    t.string   "finish_node_id",   limit: 255
    t.integer  "link_type",        limit: 4
    t.float    "width",            limit: 24
    t.boolean  "level_difference"
    t.float    "level_latitude",   limit: 24
    t.float    "level_longitude",  limit: 24
    t.boolean  "dot_block"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "length",           limit: 4
  end

  add_index "links", ["finish_node_id"], name: "index_links_on_finish_node_id", using: :btree
  add_index "links", ["start_node_id"], name: "index_links_on_start_node_id", using: :btree

  create_table "nodes", force: :cascade do |t|
    t.string   "node_id",    limit: 255
    t.string   "address",    limit: 255
    t.decimal  "latitude",               precision: 15, scale: 10
    t.decimal  "longitude",              precision: 15, scale: 10
    t.integer  "height",     limit: 4
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "nodes", ["node_id"], name: "index_nodes_on_node_id", unique: true, using: :btree

  create_table "places", force: :cascade do |t|
    t.string   "entrance_id",      limit: 255
    t.string   "node_id",          limit: 255
    t.string   "place_id",         limit: 255
    t.string   "name",             limit: 255
    t.integer  "entrance_type",    limit: 4
    t.integer  "door_type",        limit: 4
    t.integer  "level_difference", limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "uuid",       limit: 255
    t.string   "title",      limit: 255
    t.string   "subtitle",   limit: 255
    t.string   "reviewer",   limit: 255
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "ucodes", force: :cascade do |t|
    t.string   "uuid",       limit: 255
    t.string   "place_id",   limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "ucodes", ["uuid"], name: "index_ucodes_on_uuid", using: :btree

end
