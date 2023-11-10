class PatientsController < ApplicationController
  before_action :authenticate_patient!

  def index
  end

  def show
    @user = Patient.find(params[:id])
  end

  def edit
    @user = Patient.find(params[:id])
    if @user.id != current_patient.id
      redirect_to edit_patient_path(current_patient.id)
    end
  end

  def update
    @patient = Patient.find_by(id: current_patient.id)

    if @patient.update(patient_params)
      redirect_to patient_path(current_patient.id), notice: "Patient Updated"
    else
      redirect_to patient_path(current_patient.id), alert: "Patient wasn't Updated"
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :phone_number, :email)
  end
end
