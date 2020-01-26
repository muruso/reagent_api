# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_26_085634) do

  create_table "orders", force: :cascade do |t|
    t.time "ordered_at"
    t.time "delivered_at"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders_reagents", force: :cascade do |t|
    t.integer "order_id"
    t.integer "reagent_id"
    t.integer "reagent_amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reagents", force: :cascade do |t|
    t.string "name"
    t.string "maker"
    t.integer "model_num"
    t.string "capacity"
    t.integer "price"
    t.string "consumption_per_week"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "reagent_id"
  end

end
