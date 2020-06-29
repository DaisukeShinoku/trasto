class AddHouseImageToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :house_image, :string
  end
end
