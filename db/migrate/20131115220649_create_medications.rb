class CreateMedications < ActiveRecord::Migration
  def change
    create_table :medications do |t|
      t.string :medication_name
      t.string :dosage_amt
      t.string :dosage_daily_frequency
      t.string :dosage_daily_time
      t.string :dosage_duration
      t.date :date_last_filled
      t.date :date_next_refill
      t.string :doctor
    end
  end
end
