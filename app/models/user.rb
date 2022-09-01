class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :list_of_vitamins
  has_many :vitamins, through: :list_of_vitamins
end
