class AddLatToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :lat, :float
  end
end
