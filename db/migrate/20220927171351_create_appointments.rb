class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :Doctor_id
      t.datetime :date

      t.timestamps
    end
  end
end
