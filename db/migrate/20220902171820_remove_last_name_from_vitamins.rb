class RemoveLastNameFromVitamins < ActiveRecord::Migration[7.0]
  def change
    remove_column :vitamins, :last_name, :string
  end
end
