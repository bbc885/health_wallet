class Doctor < ActiveRecord::Base

belongs_to :patient
validates :first_name, :presence => true
validates :last_name, :presence => true
validates :doctor, :presence => true
end
