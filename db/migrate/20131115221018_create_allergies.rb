class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|
      t.string :allergies
      t.string :allergy_severity
      t.string :allergy_classification
    end
  end
end
