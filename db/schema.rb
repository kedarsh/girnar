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

ActiveRecord::Schema.define(version: 20150309060340) do

  create_table "flavours", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "labels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
  end

  create_table "labels_themes", force: true do |t|
    t.integer "label_id"
    t.integer "theme_id"
  end

  add_index "labels_themes", ["label_id"], name: "index_labels_themes_on_label_id"
  add_index "labels_themes", ["theme_id"], name: "index_labels_themes_on_theme_id"

  create_table "orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "serving_style_id"
    t.integer  "tea_base_id"
    t.integer  "flavour_id"
    t.integer  "packaging_id"
    t.integer  "label_id"
    t.string   "blend_name"
    t.text     "message"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "second_flavour_id"
  end

  add_index "orders", ["flavour_id"], name: "index_orders_on_flavour_id"
  add_index "orders", ["label_id"], name: "index_orders_on_label_id"
  add_index "orders", ["packaging_id"], name: "index_orders_on_packaging_id"
  add_index "orders", ["serving_style_id"], name: "index_orders_on_serving_style_id"
  add_index "orders", ["tea_base_id"], name: "index_orders_on_tea_base_id"
  add_index "orders", ["user_id"], name: "index_orders_on_user_id"

  create_table "packagings", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "related_flavours", force: true do |t|
    t.integer  "flavour_a_id"
    t.integer  "flavour_b_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "related_flavours", ["flavour_a_id", "flavour_b_id"], name: "index_related_flavours_on_flavour_a_id_and_flavour_b_id", unique: true
  add_index "related_flavours", ["flavour_a_id"], name: "index_related_flavours_on_flavour_a_id"
  add_index "related_flavours", ["flavour_b_id"], name: "index_related_flavours_on_flavour_b_id"

  create_table "serving_styles", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"
  end

  create_table "tea_base_types", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.decimal  "price",       precision: 8, scale: 2
    t.integer  "tea_base_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tea_base_types", ["tea_base_id"], name: "index_tea_base_types_on_tea_base_id"

  create_table "tea_bases", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "description"
    t.text     "info"
    t.integer  "no_of_flavours"
    t.integer  "serving_style_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tea_bases", ["serving_style_id"], name: "index_tea_bases_on_serving_style_id"

  create_table "themes", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
