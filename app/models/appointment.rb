class Appointment < ApplicationRecord
	belongs_to :doctor
	belongs_to :patient

	def hr_datetime
		self.appointment_datetime.strftime("%B %e, %Y at %H:%M")
	end

end
