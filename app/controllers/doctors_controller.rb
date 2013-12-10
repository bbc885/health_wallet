class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find_by(id: params[:id])
  end

  def new
  end

  def create
    @doctor = Doctor.new
    @doctor.first_name = params[:first_name]
    @doctor.last_name = params[:last_name]
    @doctor.doctor = params[:doctor]
    @doctor.specialty = params[:specialty]
    @doctor.street_addr = params[:street_addr]
    @doctor.city = params[:city]
    @doctor.state = params[:state]
    @doctor.zip = params[:zip]
    @doctor.patient_id = current_patient.id

    if @doctor.save
      redirect_to doctors_url, notice: "Doctor created successfully."
    else
      render 'new'
    end
  end

  def edit
    @doctor = Doctor.find_by(id: params[:id])
  end

  def update
    @doctor = Doctor.find_by(id: params[:id])
    @doctor.first_name = params[:first_name]
    @doctor.last_name = params[:last_name]
    @doctor.doctor = params[:doctor]
    @doctor.specialty = params[:specialty]
    @doctor.street_addr = params[:street_addr]
    @doctor.city = params[:city]
    @doctor.state = params[:state]
    @doctor.zip = params[:zip]
    @doctor.patient_id = current_patient.id

    if @doctor.save
      redirect_to doctors_url, notice: "Doctor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @doctor = Doctor.find_by(id: params[:id])
    @doctor.destroy

    redirect_to doctors_url, notice: "Doctor deleted."
  end
end
