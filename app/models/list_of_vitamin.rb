class ListOfVitamin < ApplicationRecord
  belongs_to :vitamin
  belongs_to :user
  validates_uniqueness_of :vitamin_id, uniqueness: true, scope: :user_id
  # validates :quantity, numericality: { greater_than_or_equal_to: 0 }
  # validates :intake_quantity, numericality: { greater_than_or_equal_to: 0 }
  # validates :intake_quantity_left, numericality: { greater_than_or_equal_to: 0 }
end
