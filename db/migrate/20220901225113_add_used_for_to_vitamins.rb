class AddUsedForToVitamins < ActiveRecord::Migration[7.0]
  def change
    add_column :vitamins, :Used_for, :string
  end
end
