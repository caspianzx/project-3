class Appointment < ApplicationRecord
  belongs_to :service
  belongs_to :timeslot

  validates :name, :phone, :date, :timeslot_id, presence: true
end