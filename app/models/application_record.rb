
class ApplicationRecord < ActiveRecord::Base
	 
	

  self.abstract_class = true

  validates_with SubmissionValidator

  
  #validates :Popcorn_Machine, uniqueness: {scope: :Event_Date, message: "is not available during your Event Date"}
end 