class MedicalHistory < ActiveRecord::Base
  attr_accessible :history, :allergies, :familyHistory, :images, :appointments
  
  belongs_to :user
end
