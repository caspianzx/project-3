class Ratings < ActiveRecord::Migration[5.2]
  def change
     create_table :ratings do |t|
       t.text :name
       t.text :email
       t.date :date_of_visit
       t.integer :rating
       t.references :service
       t.references :salon
     end
  end
end