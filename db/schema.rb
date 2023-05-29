# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_29_205756) do
  create_table "prices", force: :cascade do |t|
    t.decimal "price"
    t.string "option"
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_prices_on_product_id"
  end

  create_table "product_groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_subgroups", force: :cascade do |t|
    t.string "name"
    t.integer "product_group_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_group_id"], name: "index_product_subgroups_on_product_group_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "name"
    t.integer "code"
    t.integer "productsubgroup_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_products_on_code", unique: true
    t.index ["productsubgroup_id"], name: "index_products_on_productsubgroup_id"
  end

  create_table "temperature_ranges", force: :cascade do |t|
    t.string "range"
    t.integer "product_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_temperature_ranges_on_product_id"
  end

  add_foreign_key "prices", "products"
  add_foreign_key "product_subgroups", "product_groups"
  add_foreign_key "products", "productsubgroups"
  add_foreign_key "temperature_ranges", "products"
end
