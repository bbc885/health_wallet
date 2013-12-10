class AddPatientIdToEverything < ActiveRecord::Migration
  def change
  	add_column :allergies, :patient_id, :integer
  	add_column :medications, :patient_id, :integer
  	add_column :doctors, :patient_id, :integer
  	add_column :conditions, :patient_id, :integer
  end
end
