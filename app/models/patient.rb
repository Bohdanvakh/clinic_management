class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :doctors
  has_many :appointments
  has_many :doctors, through: :appointments

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_number, presence: true, length: { is: 10 }, format: { with: /\A[0-9]+\z/ }
end
