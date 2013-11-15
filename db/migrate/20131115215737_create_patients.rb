class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :First_name
      t.string :last_name
      t.date :date_of_birth
      t.string :gender
      t.string :blood_type
      t.string :medication
      t.string :allergies
      t.string :doctor
      t.string :med_conditions
    end
  end
end
