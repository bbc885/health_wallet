class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find_by(id: params[:id])
  end

  def new
  end

  def create
    @patient = Patient.new
    @patient.First_name = params[:First_name]
    @patient.last_name = params[:last_name]
    @patient.date_of_birth = params[:date_of_birth]
    @patient.gender = params[:gender]
    @patient.blood_type = params[:blood_type]
    @patient.medication = params[:medication]
    @patient.allergies = params[:allergies]
    @patient.doctor = params[:doctor]
    @patient.med_conditions = params[:med_conditions]
    @patient.img_url = params[:img_url]

    if @patient.save
      redirect_to patients_url, notice: "Patient created successfully."
    else
      render 'new'
    end
  end

  def edit
    @patient = Patient.find_by(id: params[:id])
  end

  def update
    @patient = Patient.find_by(id: params[:id])
    @patient.First_name = params[:First_name]
    @patient.last_name = params[:last_name]
    @patient.date_of_birth = params[:date_of_birth]
    @patient.gender = params[:gender]
    @patient.blood_type = params[:blood_type]
    @patient.medication = params[:medication]
    @patient.allergies = params[:allergies]
    @patient.doctor = params[:doctor]
    @patient.med_conditions = params[:med_conditions]
    @patient.img_url = params[:img_url]
    
    if @patient.save
      redirect_to patients_url, notice: "Patient updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @patient = Patient.find_by(id: params[:id])
    @patient.destroy

    redirect_to patients_url, notice: "Patient deleted."
  end
end
