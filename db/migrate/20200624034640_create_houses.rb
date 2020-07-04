class CreateHouses < ActiveRecord::Migration[6.0]
  def change
    create_table :houses do |t|
      t.string :name, null: false
      t.string :postcode, null: false
      t.integer :prefecture_code, null: false
      t.string :address, null: false
      t.integer :domitory_price
      t.integer :private_price
      t.string :copy
      t.text :introduction
      t.boolean :is_valid, default:true, null: false

      t.timestamps
    end
  end
end
