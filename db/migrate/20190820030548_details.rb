class Details < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.text :name
      t.text :phone
      t.text :address
      t.text :area
      t.text :website
      t.text :logo_url
      t.references :salon
      t.timestamps
    end
  end
end