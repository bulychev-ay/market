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

ActiveRecord::Schema.define(version: 20180113070056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cart_products", force: :cascade do |t|
    t.bigint "cart_id"
    t.bigint "product_id"
    t.integer "quantity"
    t.datetime "put_date"
    t.datetime "purchase_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_cart_products_on_cart_id"
    t.index ["product_id"], name: "index_cart_products_on_product_id"
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_products", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_category_products_on_category_id"
    t.index ["product_id"], name: "index_category_products_on_product_id"
  end

  create_table "currencies", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "price_products", force: :cascade do |t|
    t.bigint "product_id"
    t.bigint "price_id"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["price_id"], name: "index_price_products_on_price_id"
    t.index ["product_id"], name: "index_price_products_on_product_id"
  end

  create_table "prices", force: :cascade do |t|
    t.float "price"
    t.bigint "currency_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["currency_id"], name: "index_prices_on_currency_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.text "description"
    t.integer "available"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "login"
    t.string "password"
    t.string "email"
    t.string "full_name"
    t.date "birth_date"
    t.integer "gender"
    t.datetime "blocked_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
