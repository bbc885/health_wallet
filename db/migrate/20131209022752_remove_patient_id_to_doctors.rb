class RemovePatientIdToDoctors < ActiveRecord::Migration
  def change
    remove_column :doctors, :patient_id, :integer
  end
end
