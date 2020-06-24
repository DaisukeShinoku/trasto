class CreateToGoLists < ActiveRecord::Migration[6.0]
  def change
    create_table :to_go_lists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :house, null: false, foreign_key: true

      t.timestamps
    end
  end
end
