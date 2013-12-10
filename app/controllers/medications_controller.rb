class MedicationsController < ApplicationController

  def index
    @medications = Medication.all
  end

  def show
    @medication = Medication.find_by(id: params[:id])
  end

  def new
  end

  def create
    @medication = Medication.new
    @medication.medication_name = params[:medication_name]
    @medication.dosage_amt = params[:dosage_amt]
    @medication.dosage_daily_frequency = params[:dosage_daily_frequency]
    @medication.dosage_daily_time = params[:dosage_daily_time]
    @medication.dosage_duration = params[:dosage_duration]
    @medication.date_last_filled = params[:date_last_filled]
    @medication.date_next_refill = params[:date_next_refill]
    @medication.doctor = params[:doctor]
    @medication.patient_id = current_patient.id

    if @medication.save
      redirect_to medications_url, notice: "Medication created successfully."
    else
      render 'new'
    end
  end

  def edit
    @medication = Medication.find_by(id: params[:id])
  end

  def update
    @medication = Medication.find_by(id: params[:id])
    @medication.medication_name = params[:medication_name]
    @medication.dosage_amt = params[:dosage_amt]
    @medication.dosage_daily_frequency = params[:dosage_daily_frequency]
    @medication.dosage_daily_time = params[:dosage_daily_time]
    @medication.dosage_duration = params[:dosage_duration]
    @medication.date_last_filled = params[:date_last_filled]
    @medication.date_next_refill = params[:date_next_refill]
    @medication.doctor = params[:doctor]
    @medication.patient_id = current_patient.id

    if @medication.save
      redirect_to medications_url, notice: "Medication updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @medication = Medication.find_by(id: params[:id])
    @medication.destroy

    redirect_to medications_url, notice: "Medication deleted."
  end
end
