
 
class Submission < ApplicationRecord

	 	
	#validates :Event_Date, inclusion: {in: %w(:Pick_up_Date :Event_Date :Drop_off_Date), message: "Event day does not fall within the Pick up and Drop off Date"}
	#validates :Pick_up_Date, inclusion: {in: %w(:Pick_up_Date :Event_Date), message: "Event day does not fall within the Pick up and Drop off Date"}
	validates :Popcorn_Machine, uniqueness: {scope: :Event_Date, message: "is not available during your Event Date"} , allow_blank: true 
	validates :Popcorn_Machine, uniqueness: {scope: :Pick_Up_Date, message: "is not available during your Pick Up Date"} , allow_blank: true 
	validates :Popcorn_Machine, uniqueness: {scope: :Drop_Off_Date, message: "is not available during your Drop off Date"} , allow_blank: true
	
end 

	