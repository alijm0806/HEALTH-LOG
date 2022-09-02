class RenameIntakeQuantity < ActiveRecord::Migration[7.0]
  def change
    rename_column :list_of_vitamins, :intake_quantiy, :intake_quantity
  end
end
