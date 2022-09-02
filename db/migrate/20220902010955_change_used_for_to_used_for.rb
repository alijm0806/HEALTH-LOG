class ChangeUsedForToUsedFor < ActiveRecord::Migration[7.0]
  def change
    rename_column :vitamins, :Used_for, :used_for
  end
end
