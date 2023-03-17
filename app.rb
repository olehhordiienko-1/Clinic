# app/controllers/clinics_controller.rb
class ClinicsController < ApplicationController
  def index
    @clinics = Clinic.all
  end

  def show
    @clinic = Clinic.find(params[:id])
  end

  def new
    @clinic = Clinic.new
  end

  def create
    @clinic = Clinic.new(clinic_params)

    if @clinic.save
      redirect_to clinics_path
    else
      render :new
    end
  end
end