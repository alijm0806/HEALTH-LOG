class ListOfVitamin < ApplicationRecord
  belongs_to :vitamin
  belongs_to :user
  validates_uniqueness_of :vitamin_id, uniqueness: true, scope: :user_id
end
