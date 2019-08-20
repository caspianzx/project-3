class Appointment < ApplicationRecord
  has_many :appointments
  belongs_to :salon
end