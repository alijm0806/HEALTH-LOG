class ChangeSourcesToImages < ActiveRecord::Migration[7.0]
  def change
    rename_column :vitamins, :sources, :images
  end
end
