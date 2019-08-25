class Rating < ApplicationRecord
  belongs_to :salon
  belongs_to :service

  validates :name, :date_of_visit, :rating, presence: true
end