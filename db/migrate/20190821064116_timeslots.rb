class Timeslots < ActiveRecord::Migration[5.2]
  def change
    create_table :timeslots do |t|
       t.text :time
       t.integer :booked, default: 0
       t.integer :capacity, default: 1
       t.references :salon
     end
  end
end