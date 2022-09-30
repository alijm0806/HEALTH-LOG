class ChangeDoctorId < ActiveRecord::Migration[7.0]
  def change
    rename_column :appointments, :Doctor_id, :doctor_id
  end
end
