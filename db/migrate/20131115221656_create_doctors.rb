class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :doctor
      t.string :specialty
      t.string :street_addr
      t.string :city
      t.string :state
      t.string :zip
    end
  end
end
