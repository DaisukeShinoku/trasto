class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.references :user, null: false, foreign_key: true
      t.text :content, null: false

      t.timestamps
    end
    add_index :tweets, [:user_id, :created_at]
  end
end
