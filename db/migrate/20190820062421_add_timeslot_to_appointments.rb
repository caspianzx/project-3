class AddTimeslotToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :timeslot, :text
  end
end
