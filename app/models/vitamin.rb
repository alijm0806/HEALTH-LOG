class Vitamin < ApplicationRecord
  has_many :list_of_vitamins
  has_many :users, through: :list_of_vitamins
end
