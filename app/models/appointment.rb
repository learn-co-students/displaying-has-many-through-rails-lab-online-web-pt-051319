class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def doctor_name= (doctor_id)
        self.doctor = Doctor.find_or_create_by(id: doctor_id)
    end 

    def doctor_name 
        self.doctor ? self.doctor.name : nil
    end 

    def patient_name= (patient_id)
        self.patient = Patient.find_or_create_by(id: patient_id)
    end 

    def patient_name 
        self.patient ? self.patient.name : nil
    end 
end


