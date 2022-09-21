class AddDescriptionsToVitamins < ActiveRecord::Migration[7.0]
  def change
    add_column :vitamins, :descriptions, :text
  end
end
