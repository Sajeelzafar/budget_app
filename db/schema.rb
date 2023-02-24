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

ActiveRecord::Schema[7.0].define(version: 2023_02_24_212933) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_trans", force: :cascade do |t|
    t.bigint "classification_id", null: false
    t.bigint "transaction_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["classification_id"], name: "index_class_trans_on_classification_id"
    t.index ["transaction_id"], name: "index_class_trans_on_transaction_id"
  end

  create_table "classifications", force: :cascade do |t|
    t.string "name"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id", null: false
    t.index ["author_id"], name: "index_classifications_on_author_id"
  end

  create_table "trans_tables", force: :cascade do |t|
    t.string "name"
    t.decimal "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "author_id", null: false
    t.index ["author_id"], name: "index_trans_tables_on_author_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "class_trans", "classifications"
  add_foreign_key "class_trans", "trans_tables", column: "transaction_id"
  add_foreign_key "classifications", "users", column: "author_id"
  add_foreign_key "trans_tables", "users", column: "author_id"
end
