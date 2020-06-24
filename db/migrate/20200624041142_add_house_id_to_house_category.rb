class AddHouseIdToHouseCategory < ActiveRecord::Migration[6.0]
  def change
    add_reference :house_categories, :house, foreign_key: true
    add_reference :house_categories, :category, foreign_key: true
  end
end
