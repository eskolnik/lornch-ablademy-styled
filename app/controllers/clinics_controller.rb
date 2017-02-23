class ClinicsController < ApplicationController
  def index
    @clinics = Clinic.all
  end

  def show
    @clinic = Clinic.find(params[:id])
    @comments = @clinic.comments
    @students = @clinic.students
  end
end
