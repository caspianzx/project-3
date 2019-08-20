class Appointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
       t.text :name
       t.text :phone
       t.text :email
       # date/time
       t.references :service
       t.timestamps
     end
  end
end