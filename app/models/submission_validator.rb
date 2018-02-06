 
 class SubmissionValidator < ActiveModel::Validator
	def validate(record)
		if record.Pick_Up_Date > record.Drop_Off_Date
			record.errors[:Pick_Up_Date] <<  "must be before Drop off Date"
		end 
		if record.Event_Date.between?(record.Pick_Up_Date, record.Drop_Off_Date)
		else
			record.errors[:Event_Date] << "must be between pick up and drop off date"
		end
		if record.Drop_Off_Date > record.Event_Date + 2
			record.errors[:Drop_Off_Date]  << "can not be more than two days after pick up date "
		end 

		


	end
end  