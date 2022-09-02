class RenameVitaminName < ActiveRecord::Migration[7.0]
  def change
    rename_column :vitamins, :first_name, :name
  end
end
