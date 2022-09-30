class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user
  validates :phone_number, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
end
