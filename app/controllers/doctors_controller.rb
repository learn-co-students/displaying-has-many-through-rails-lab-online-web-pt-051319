class DoctorsController < ApplicationController 
    
    def index 
        @doctors = Doctor.all 
    end 
    
    def new 
        @doctor = Doctor.new
    end

    def create 
        @doctor = Doctor.new(doc_params)
        @doctor.save 
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    def edit
        @doctor = Doctor.find(params[:id])

    end

    def update
     @doctor = Doctor.find(params[:id])

    end

    private

    def doc_params 
        
    end 
end 