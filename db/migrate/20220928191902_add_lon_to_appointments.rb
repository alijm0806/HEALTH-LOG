class AddLonToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :lon, :float
  end
end
