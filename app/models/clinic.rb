class Clinic < ActiveRecord::Base
  validates :name, presence: true
  validates :speaker, presence: true

  has_many :signups
  has_many :students, through: :signups

  has_many :comments 
end
