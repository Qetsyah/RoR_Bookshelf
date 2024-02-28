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

ActiveRecord::Schema[7.0].define(version: 2024_02_28_150625) do
  create_table "books", force: :cascade do |t|
    t.string "title", null: false
    t.string "description", null: false
    t.string "cover_url", null: false
    t.integer "genre", default: 0
    t.string "author"
    t.integer "shelf_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shelf_id"], name: "index_books_on_shelf_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "book_id", null: false
    t.integer "user_id", null: false
    t.date "returned_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_reservations_on_book_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "shelves", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.boolean "is_admin", default: false
    t.string "email", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
