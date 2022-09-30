class ChangeDeficiencyToText < ActiveRecord::Migration[7.0]
  def change
    change_column :vitamins, :deficiency, :text
  end
end
