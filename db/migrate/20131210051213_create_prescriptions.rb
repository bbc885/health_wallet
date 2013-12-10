class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :doc_id
      t.integer :medication_id
      t.integer :patient_id
      t.date :prescription_date
    end
  end
end
