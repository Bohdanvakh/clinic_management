class Patient < ApplicationRecord
  include DeviseMethods

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :phone_number, uniqueness: true, length: { is: 10 }

  has_many :doctors
  has_many :appointments
  has_many :doctors, through: :appointments

  # validates :first_name
  # validates :last_name
  validates :phone_number, presence: true, length: { is: 10 }, format: { with: /\A[0-9]+\z/ }
end
