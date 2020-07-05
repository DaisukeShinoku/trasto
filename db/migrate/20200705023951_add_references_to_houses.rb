class AddReferencesToHouses < ActiveRecord::Migration[6.0]
  def change
    add_reference :houses, :house_area, null: false, foreign_key: true
  end
end
