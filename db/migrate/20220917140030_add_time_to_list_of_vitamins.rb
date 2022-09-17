class AddTimeToListOfVitamins < ActiveRecord::Migration[7.0]
  def change
    add_column :list_of_vitamins, :Time, :datetime
  end
end
