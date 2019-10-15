class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def datetime
        date = self.appointment_datetime
        date.strftime("%B") + " " + date.strftime("%e") + ", " + date.strftime("%Y") + " at " +  date.strftime("%R") 
    end
end
