class Doctor < ApplicationRecord
  include DeviseMethods

  belongs_to :category
  has_many :appointments
  has_many :patients, through: :appointments

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :email, presence: false, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true, length: { is: 10 }, format: { with: /\A[0-9]+\z/ }
  validates :category, presence: true
  validates :category_id, presence: false
end
