class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :account_name, null: false
      t.string :display_name, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.text :introduction
      t.boolean :is_valid, default:true, null: false

      t.timestamps
    end
  end
end
