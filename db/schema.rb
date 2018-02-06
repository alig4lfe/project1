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

ActiveRecord::Schema.define(version: 20171227201919) do

  create_table "submissions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "First_Name"
    t.string "Last_Name"
    t.string "Email"
    t.string "Phone_Number"
    t.date "Event_Date"
    t.time "Event_Time"
    t.string "Event_Name"
    t.text "Event_Description"
    t.date "Pick_Up_Date"
    t.date "Drop_Off_Date"
    t.boolean "Popcorn_Machine"
    t.boolean "SnowKone_Machine"
    t.boolean "Chocolate_Fountain"
    t.boolean "Cotton_Candy_Machine"
    t.boolean "Margaritaville"
    t.boolean "Pancake_Griddle_A"
    t.boolean "Pancake_Griddle_B"
    t.boolean "Pancake_Griddle_C"
    t.boolean "Epson_Projector"
    t.boolean "Projector_Screen"
    t.boolean "Fender_Speakers_Blutooth"
    t.boolean "Fender_Speakers_Wired"
    t.boolean "microphone_and_Stand"
    t.boolean "Cornhole"
    t.boolean "Kan_Jam"
    t.boolean "Bocce_Ball"
    t.boolean "Washer_Toss"
    t.boolean "White_Canopy_A"
    t.boolean "White_Canopy_B"
    t.boolean "White_Canopy_C"
    t.boolean "Strobe_Lights"
    t.boolean "Red_Police_Light"
    t.boolean "Six_Light_Helicopter"
    t.boolean "Black_Light"
    t.boolean "Extention_Cord_A"
    t.boolean "Extention_Cord_B"
    t.boolean "Extention_cord_C"
    t.boolean "Water_Cooler_A"
    t.boolean "Water_Cooler_B"
    t.boolean "Water_Cooler_C"
    t.boolean "Ice_Chest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
