class Salon < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :photos
  has_many :services
  has_one :detail
  accepts_nested_attributes_for :services
  has_many :appointments, through: :services
  has_many :timeslots
  has_many :ratings
end