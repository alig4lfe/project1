require 'test_helper'

class SubmissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @submission = submissions(:one)
  end

  test "should get index" do
    get submissions_url
    assert_response :success
  end

  test "should get new" do
    get new_submission_url
    assert_response :success
  end

  test "should create submission" do
    assert_difference('Submission.count') do
      post submissions_url, params: { submission: { Black_Light: @submission.Black_Light, Bocce_Ball: @submission.Bocce_Ball, Chocolate_Fountain: @submission.Chocolate_Fountain, Cornhole: @submission.Cornhole, Cotton_Candy_Machine: @submission.Cotton_Candy_Machine, Drop_Off_Date: @submission.Drop_Off_Date, Email: @submission.Email, Epson_Projector: @submission.Epson_Projector, Event_Date: @submission.Event_Date, Event_Description: @submission.Event_Description, Event_Name: @submission.Event_Name, Event_Time: @submission.Event_Time, Extention_Cord_A: @submission.Extention_Cord_A, Extention_Cord_B: @submission.Extention_Cord_B, Extention_cord_C: @submission.Extention_cord_C, Fender_Speakers_Blutooth: @submission.Fender_Speakers_Blutooth, Fender_Speakers_Wired: @submission.Fender_Speakers_Wired, First_Name: @submission.First_Name, Ice_Chest: @submission.Ice_Chest, Kan_Jam: @submission.Kan_Jam, Last_Name: @submission.Last_Name, Margaritaville: @submission.Margaritaville, Pancake_Griddle_A: @submission.Pancake_Griddle_A, Pancake_Griddle_B: @submission.Pancake_Griddle_B, Pancake_Griddle_C: @submission.Pancake_Griddle_C, Phone_Number: @submission.Phone_Number, Pick_Up_Date: @submission.Pick_Up_Date, Popcorn_Machine: @submission.Popcorn_Machine, Projector_Screen: @submission.Projector_Screen, Red_Police_Light: @submission.Red_Police_Light, Six_Light_Helicopter: @submission.Six_Light_Helicopter, SnowKone_Machine: @submission.SnowKone_Machine, Strobe_Lights: @submission.Strobe_Lights, Washer_Toss: @submission.Washer_Toss, Water_Cooler_A: @submission.Water_Cooler_A, Water_Cooler_B: @submission.Water_Cooler_B, Water_Cooler_C: @submission.Water_Cooler_C, White_Canopy_A: @submission.White_Canopy_A, White_Canopy_B: @submission.White_Canopy_B, White_Canopy_C: @submission.White_Canopy_C, microphone_and_Stand: @submission.microphone_and_Stand } }
    end

    assert_redirected_to submission_url(Submission.last)
  end

  test "should show submission" do
    get submission_url(@submission)
    assert_response :success
  end

  test "should get edit" do
    get edit_submission_url(@submission)
    assert_response :success
  end

  test "should update submission" do
    patch submission_url(@submission), params: { submission: { Black_Light: @submission.Black_Light, Bocce_Ball: @submission.Bocce_Ball, Chocolate_Fountain: @submission.Chocolate_Fountain, Cornhole: @submission.Cornhole, Cotton_Candy_Machine: @submission.Cotton_Candy_Machine, Drop_Off_Date: @submission.Drop_Off_Date, Email: @submission.Email, Epson_Projector: @submission.Epson_Projector, Event_Date: @submission.Event_Date, Event_Description: @submission.Event_Description, Event_Name: @submission.Event_Name, Event_Time: @submission.Event_Time, Extention_Cord_A: @submission.Extention_Cord_A, Extention_Cord_B: @submission.Extention_Cord_B, Extention_cord_C: @submission.Extention_cord_C, Fender_Speakers_Blutooth: @submission.Fender_Speakers_Blutooth, Fender_Speakers_Wired: @submission.Fender_Speakers_Wired, First_Name: @submission.First_Name, Ice_Chest: @submission.Ice_Chest, Kan_Jam: @submission.Kan_Jam, Last_Name: @submission.Last_Name, Margaritaville: @submission.Margaritaville, Pancake_Griddle_A: @submission.Pancake_Griddle_A, Pancake_Griddle_B: @submission.Pancake_Griddle_B, Pancake_Griddle_C: @submission.Pancake_Griddle_C, Phone_Number: @submission.Phone_Number, Pick_Up_Date: @submission.Pick_Up_Date, Popcorn_Machine: @submission.Popcorn_Machine, Projector_Screen: @submission.Projector_Screen, Red_Police_Light: @submission.Red_Police_Light, Six_Light_Helicopter: @submission.Six_Light_Helicopter, SnowKone_Machine: @submission.SnowKone_Machine, Strobe_Lights: @submission.Strobe_Lights, Washer_Toss: @submission.Washer_Toss, Water_Cooler_A: @submission.Water_Cooler_A, Water_Cooler_B: @submission.Water_Cooler_B, Water_Cooler_C: @submission.Water_Cooler_C, White_Canopy_A: @submission.White_Canopy_A, White_Canopy_B: @submission.White_Canopy_B, White_Canopy_C: @submission.White_Canopy_C, microphone_and_Stand: @submission.microphone_and_Stand } }
    assert_redirected_to submission_url(@submission)
  end

  test "should destroy submission" do
    assert_difference('Submission.count', -1) do
      delete submission_url(@submission)
    end

    assert_redirected_to submissions_url
  end
end
