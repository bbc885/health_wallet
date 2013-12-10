class PrescriptionsController < ApplicationController

  def index
    @prescriptions = Prescription.all
  end

  def show
    @prescription = Prescription.find_by(id: params[:id])
  end

  def new
  end

  def create
    @prescription = Prescription.new
    @prescription.doc_id = params[:doc_id]
    @prescription.medication_id = params[:medication_id]
    @prescription.patient_id = params[:patient_id]
    @prescription.prescription_date = params[:prescription_date]

    if @prescription.save
      redirect_to prescriptions_url, notice: "Prescription created successfully."
    else
      render 'new'
    end
  end

  def edit
    @prescription = Prescription.find_by(id: params[:id])
  end

  def update
    @prescription = Prescription.find_by(id: params[:id])
    @prescription.doc_id = params[:doc_id]
    @prescription.medication_id = params[:medication_id]
    @prescription.patient_id = params[:patient_id]
    @prescription.prescription_date = params[:prescription_date]

    if @prescription.save
      redirect_to prescriptions_url, notice: "Prescription updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @prescription = Prescription.find_by(id: params[:id])
    @prescription.destroy

    redirect_to prescriptions_url, notice: "Prescription deleted."
  end
end
