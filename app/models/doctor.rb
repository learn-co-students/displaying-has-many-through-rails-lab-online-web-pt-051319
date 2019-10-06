class Doctor < ActiveRecord::Base 
    has_many :patients, through: :appointments
    has_many :appointments

    def patients_number
        self.patients.length
    end

    def patient_name 
        self.patients.each do |p|
            p.name 
        end 
    end 

end