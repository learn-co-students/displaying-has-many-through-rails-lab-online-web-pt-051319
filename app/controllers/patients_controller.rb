class PatientsController < ApplicationController

    def index 
        @patients = Patient.all
    end

    def show 
        @patient = Patient.dind(params[:id])
    end

end
