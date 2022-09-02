class RemoveFirstNameFromVitamins < ActiveRecord::Migration[7.0]
  def change
    remove_column :vitamins, :first_name, :string
  end
end
