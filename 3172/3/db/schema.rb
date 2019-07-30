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

# rubocop:disable Style/NumericLiterals
ActiveRecord::Schema.define(version: 2019_07_28_203754) do
  create_table 'places', force: :cascade do |t|
    t.text 'name'
    t.text 'description'
    t.text 'locations'
  end

  create_table 'reviews', force: :cascade do |t|
    t.text 'text'
    t.integer 'rating'
    t.integer 'author'
    t.integer 'place_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['place_id'], name: 'index_reviews_on_place_id'
  end

  create_table 'users', force: :cascade do |t|
    t.text 'name'
    t.text 'email'
    t.text 'password'
  end
end
# rubocop:enable Style/NumericLiterals
