class ChangeDefeciencyToText < ActiveRecord::Migration[7.0]
  def change
    rename_column :vitamins, :defeciency, :deficiency
  end
end
