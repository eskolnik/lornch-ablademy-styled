class Student < ActiveRecord::Base
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :signups
  has_many :clinics, through: :signups
end
