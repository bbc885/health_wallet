class AllergiesController < ApplicationController

  def index
    @allergies = Allergy.all
  end

  def show
    @allergy = Allergy.find_by(id: params[:id])
  end

  def new
  end

  def create
    @allergy = Allergy.new
    @allergy.allergies = params[:allergies]
    @allergy.allergy_severity = params[:allergy_severity]
    @allergy.allergy_classification = params[:allergy_classification]

    if @allergy.save
      redirect_to allergies_url, notice: "Allergy created successfully."
    else
      render 'new'
    end
  end

  def edit
    @allergy = Allergy.find_by(id: params[:id])
  end

  def update
    @allergy = Allergy.find_by(id: params[:id])
    @allergy.allergies = params[:allergies]
    @allergy.allergy_severity = params[:allergy_severity]
    @allergy.allergy_classification = params[:allergy_classification]

    if @allergy.save
      redirect_to allergies_url, notice: "Allergy updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @allergy = Allergy.find_by(id: params[:id])
    @allergy.destroy

    redirect_to allergies_url, notice: "Allergy deleted."
  end
end
