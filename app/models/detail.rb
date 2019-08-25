class Detail < ApplicationRecord
  belongs_to :salon
  validates :name, :phone, :address, presence: true


end