class AddImagesToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :images, :json
  end
end
