class AddAvatarToHouses < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :avatar, :string
  end
end
