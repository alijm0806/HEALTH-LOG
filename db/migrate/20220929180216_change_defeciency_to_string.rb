class ChangeDefeciencyToString < ActiveRecord::Migration[7.0]
  def change
    change_column :vitamins, :defeciency, :string
  end
end
