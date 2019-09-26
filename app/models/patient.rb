class Patient < ApplicationRecord

    has_many :doctors, through: :appointments
    has_many :appointments

    def appointment_count 
        self.appointments.count 
    end 

end
