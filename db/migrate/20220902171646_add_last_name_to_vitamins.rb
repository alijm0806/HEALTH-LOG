class AddLastNameToVitamins < ActiveRecord::Migration[7.0]
  def change
    add_column :vitamins, :last_name, :string
  end
end
