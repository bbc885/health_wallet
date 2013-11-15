class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.string :med_conditions
      t.string :medication_name
    end
  end
end
