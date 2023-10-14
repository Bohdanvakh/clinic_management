class Patient < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :phone_number, uniqueness: true

  def email_required?
    false
  end

  def email_changed?
    false
  end

  has_many :doctors
  has_many :appointments
  has_many :doctors, through: :appointments

  # validates :first_name
  # validates :last_name
  validates :phone_number, presence: true, length: { is: 10 }, format: { with: /\A[0-9]+\z/ }
end
