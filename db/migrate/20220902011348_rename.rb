class Rename < ActiveRecord::Migration[7.0]
  def change
    rename_column :vitamins, :Sources, :sources
  end
end
