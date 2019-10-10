class AppointmentsController < ApplicationController

		before_action :set_appointment, only: [:show, :edit, :update, :destroy]
		
		def index
			raise ActionController::RoutingError.new('Not Found')
		end
	
		def new
			@appointment = Appointment.new
		end
	
		def create
			@appointment = Appointment.create(appointment_params)
			redirect_to appointment_path(@appointment)
		end
	
		def edit
			
		end
	
		def update
			@appointment.update(appointment_params)
			redirect_to appointment_path(@appointment)
		end
	
		def show
			
		end
	
		def destroy
			@appointment.destroy
			redirect_to appointments_path
		end
	
		private
	
		def appointment_params
			params.require(:appointment).permit(:appointment_datetime, :patient_id, :doctor_id)
		end
	
		def set_appointment
			@appointment = Appointment.find_by_id(params[:id])
		end
	
end
