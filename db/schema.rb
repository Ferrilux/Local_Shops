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

ActiveRecord::Schema.define(version: 2021_05_05_172929) do

  create_table "customers", force: :cascade do |t|
    t.integer "Customer_id"
    t.integer "User_id", null: false
    t.string "First_Name"
    t.string "Last_Name"
    t.integer "Phone"
    t.string "Address_1"
    t.string "Address_2"
    t.string "City"
    t.integer "Postal_Code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["User_id"], name: "index_customers_on_User_id"
  end

  create_table "order_products", id: false, force: :cascade do |t|
    t.integer "order_id"
    t.integer "product_id"
    t.integer "Quantity"
    t.index ["order_id"], name: "index_order_products_on_order_id"
    t.index ["product_id"], name: "index_order_products_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "Order_id"
    t.integer "Customer_id", null: false
    t.integer "Payment_id", null: false
    t.date "Order_Date"
    t.string "Status"
    t.string "Comments"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Customer_id"], name: "index_orders_on_Customer_id"
    t.index ["Payment_id"], name: "index_orders_on_Payment_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "Payment_id"
    t.date "Payment_Date"
    t.decimal "Amount"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "Product_id"
    t.integer "Supplier_id", null: false
    t.string "Name"
    t.integer "Qty_in_Stock"
    t.decimal "Buy_Price"
    t.string "Description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Supplier_id"], name: "index_products_on_Supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer "Supplier_id"
    t.integer "User_id", null: false
    t.integer "Office_Code"
    t.string "Last_Name"
    t.string "First_Name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["User_id"], name: "index_suppliers_on_User_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "User_id"
    t.string "Email"
    t.string "Password"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "customers", "Users"
  add_foreign_key "orders", "Customers"
  add_foreign_key "orders", "Payments"
  add_foreign_key "products", "Suppliers"
  add_foreign_key "suppliers", "Users"
end
