class DoctorsController < ApplicationController
  before_action :authenticate_doctor!

  def index

  end
end
