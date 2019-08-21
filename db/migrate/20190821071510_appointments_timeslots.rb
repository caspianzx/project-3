class AppointmentsTimeslots < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments_timeslots do |t|
      t.references :appointment
      t.references :timeslot
      t.timestamps
    end
  end
end