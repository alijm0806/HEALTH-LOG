class ListOfVitamin < ApplicationRecord
  belongs_to :vitamin
  belongs_to :user
  # validates_uniqueness_of :vitamin_id, uniqueness: true, scope: :user_id
  # validates :quantity, numericality: true, format: { with: /\A[+-]?\d+\z/,
  #                                                    message: "only allows numbers" }
end
