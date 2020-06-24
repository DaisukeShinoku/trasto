class AddIsValidToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :is_valid, :boolean, default: true, null: false
  end
end
