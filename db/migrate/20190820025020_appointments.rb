class Appointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
       t.text :name
       t.text :phone
       t.text :email
       t.date :date
       t.integer :timeslot
       t.references :service
       t.timestamps
     end
  end
end