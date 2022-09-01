class CreateListOfVitamins < ActiveRecord::Migration[7.0]
  def change
    create_table :list_of_vitamins do |t|
      t.integer :user_id
      t.integer :vitamin_id
      t.integer :quantity
      t.integer :intake_quantiy
      t.integer :intake_quantity_left

      t.timestamps
    end
  end
end
