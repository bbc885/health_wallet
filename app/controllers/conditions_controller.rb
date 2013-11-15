class ConditionsController < ApplicationController

  def index
    @conditions = Condition.all
  end

  def show
    @condition = Condition.find_by(id: params[:id])
  end

  def new
  end

  def create
    @condition = Condition.new
    @condition.med_conditions = params[:med_conditions]
    @condition.medication_name = params[:medication_name]

    if @condition.save
      redirect_to conditions_url, notice: "Condition created successfully."
    else
      render 'new'
    end
  end

  def edit
    @condition = Condition.find_by(id: params[:id])
  end

  def update
    @condition = Condition.find_by(id: params[:id])
    @condition.med_conditions = params[:med_conditions]
    @condition.medication_name = params[:medication_name]

    if @condition.save
      redirect_to conditions_url, notice: "Condition updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @condition = Condition.find_by(id: params[:id])
    @condition.destroy

    redirect_to conditions_url, notice: "Condition deleted."
  end
end
