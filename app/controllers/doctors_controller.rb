class DoctorsController < ApplicationController
  before_action :authenticate_doctor!

  def index
  end

  def show
    @user = current_doctor
  end
end
