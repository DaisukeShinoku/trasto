class CreateHouseCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :house_categories do |t|

      t.timestamps
    end
  end
end
