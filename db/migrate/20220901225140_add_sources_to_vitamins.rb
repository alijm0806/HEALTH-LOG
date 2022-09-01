class AddSourcesToVitamins < ActiveRecord::Migration[7.0]
  def change
    add_column :vitamins, :Sources, :string
  end
end
