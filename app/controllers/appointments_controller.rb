class AppointmentsController < ApplicationController
  before_action :authenticate_patient!

  def new
    @appointment = Appointment.new
    @appointments = Appointment.all
  end

  def create
    @appointment = Appointment.new(appointment_params)
    if @appointment.save
      redirect_to patient_path(current_patient.id), alert: "Appointment created"
    else
      redirect_to patient_path(current_patient.id), alert: "Appointment didn't created"
    end
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private

  def appointment_params
    params.require(:appointment).permit(:doctor_id, :patient_id, :active_status, :date)
  end
end
