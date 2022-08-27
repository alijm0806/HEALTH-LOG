class AddDescriptionToVitamins < ActiveRecord::Migration[7.0]
  def change
    add_column :vitamins, :description, :string
  end
end
