class ChangeDescriptionToDefeciency < ActiveRecord::Migration[7.0]
  def change
    rename_column :vitamins, :descriptions, :defeciency
  end
end
