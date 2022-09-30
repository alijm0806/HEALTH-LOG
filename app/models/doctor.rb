class Doctor < ApplicationRecord
  has_many :users, through: :appointments
end
