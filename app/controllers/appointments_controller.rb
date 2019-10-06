class AppointmentsController < ApplicationController
    
    def new 
        @appointment = Appointment.new
    end

    def create 
        @appointment = Appointment.new(appt_params)
        @appointment.save 
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def edit
        @appointment = Appointment.find(params[:id])

    end

    def update
     @appointment = Appointment.find(params[:id])

    end

    private 

    def appt_params
    end

end 