class AddSalonToDetails < ActiveRecord::Migration[5.2]
  def change
    add_reference :details, :salon, foreign_key: true
  end
end
