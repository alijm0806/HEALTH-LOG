class AddAddressToAppointments < ActiveRecord::Migration[7.0]
  def change
    add_column :appointments, :address, :string
  end
end
