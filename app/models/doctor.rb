class Doctor < ApplicationRecord
  belongs_to :category
  has_many :appointments
  has_many :patients, through: :appointments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true, length: { is: 10 }, format: { with: /\A[0-9]+\z/ }
end
