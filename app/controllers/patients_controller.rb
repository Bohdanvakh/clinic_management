class PatientsController < ApplicationController
  before_action :authenticate_patient!

  def index
  end

  def show
    @user = current_patient

    # @appointment = Appointment.new
  end
end
