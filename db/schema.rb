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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110624130436) do

  create_table "programs", :force => true do |t|
    t.string   "module"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs_units", :id => false, :force => true do |t|
    t.integer "program_id"
    t.integer "unit_id"
  end

  add_index "programs_units", ["program_id"], :name => "index_programs_units_on_program_id"
  add_index "programs_units", ["unit_id"], :name => "index_programs_units_on_unit_id"

  create_table "units", :force => true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
