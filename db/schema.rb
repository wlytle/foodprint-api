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

ActiveRecord::Schema.define(version: 2020_12_06_230853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "eutrophications", force: :cascade do |t|
    t.string "product"
    t.string "eutrophication"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "greenhouse_gasses", force: :cascade do |t|
    t.string "product"
    t.string "land_use_change"
    t.string "animal_feed"
    t.string "farm"
    t.string "processing"
    t.string "transport"
    t.string "packaging"
    t.string "retail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredient_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.bigint "greenhouse_gass_id"
    t.bigint "water_use_id"
    t.bigint "eutrophication_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "ingredient_type_id"
    t.index ["eutrophication_id"], name: "index_ingredients_on_eutrophication_id"
    t.index ["greenhouse_gass_id"], name: "index_ingredients_on_greenhouse_gass_id"
    t.index ["ingredient_type_id"], name: "index_ingredients_on_ingredient_type_id"
    t.index ["water_use_id"], name: "index_ingredients_on_water_use_id"
  end

  create_table "recipe_ingredients", force: :cascade do |t|
    t.string "unit"
    t.bigint "recipe_id", null: false
    t.bigint "ingredient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "quantity", precision: 10, scale: 2
    t.string "whole_line"
    t.index ["ingredient_id"], name: "index_recipe_ingredients_on_ingredient_id"
    t.index ["recipe_id"], name: "index_recipe_ingredients_on_recipe_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "title"
    t.string "instructions"
    t.string "category"
    t.boolean "public"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "yield"
  end

  create_table "user_recipes", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_user_recipes_on_recipe_id"
    t.index ["user_id"], name: "index_user_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "password_digest"
  end

  create_table "water_uses", force: :cascade do |t|
    t.string "product"
    t.string "use"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "ingredients", "eutrophications"
  add_foreign_key "ingredients", "greenhouse_gasses"
  add_foreign_key "ingredients", "ingredient_types"
  add_foreign_key "ingredients", "water_uses"
  add_foreign_key "recipe_ingredients", "ingredients"
  add_foreign_key "recipe_ingredients", "recipes"
  add_foreign_key "user_recipes", "recipes"
  add_foreign_key "user_recipes", "users"
end
