class Services < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
     t.text :name
     t.integer :price
     t.references :salon
     t.timestamps
   end
  end
end