class RenameTimeToTime < ActiveRecord::Migration[7.0]
  def change
    rename_column :list_of_vitamins, :Time, :time
  end
end
