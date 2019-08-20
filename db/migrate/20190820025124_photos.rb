class Photos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.text :photo_url
      t.references :salon
      t.timestamps
    end
  end
end