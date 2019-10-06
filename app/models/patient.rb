class Patient < ActiveRecord::Base 
    has_many :doctors, through: :appointments
    has_many :appointments

    def appt_number
        self.appointments.length
    end

end