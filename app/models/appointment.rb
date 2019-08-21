class Appointment < ApplicationRecord
  belongs_to :service
  has_and_belongs_to_many :timeslots
end