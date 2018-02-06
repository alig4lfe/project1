class SubmissionMailer < ApplicationMailer
	default from: "IRHAEquipment@IRHAEquipment.com"


	def submission_success(record)
		@submission = record 
		mail(to: @submission.Email, subject: 'IRHA Equipment Request')
	end 
end