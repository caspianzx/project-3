class Timeslots < ActiveRecord::Migration[5.2]
  def change
    create_table :timeslots do |t|
       t.text :time
     end
  end
end