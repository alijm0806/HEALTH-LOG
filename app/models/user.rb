class User < ApplicationRecord
  has_secure_password
  validates :age, numericality: { greater_than_or_equal_to: 0 }
  validates :email, presence: true, uniqueness: true
  has_many :list_of_vitamins
  has_many :vitamins, through: :list_of_vitamins
end
