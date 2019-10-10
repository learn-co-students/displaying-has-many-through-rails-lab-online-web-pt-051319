class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def patient_name
        self.patient.name
    end

    def doctor_name
        self.doctor.name
    end

    def date_time
        self.appointment_datetime.strftime('%B %d, %Y at %H:%M')
    end
end
