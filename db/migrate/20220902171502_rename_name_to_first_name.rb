class RenameNameToFirstName < ActiveRecord::Migration[7.0]
  def change
    rename_column :vitamins, :name, :first_name
  end
end
