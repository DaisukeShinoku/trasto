class CreateStoryBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :story_bookmarks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :story, null: false, foreign_key: true

      t.timestamps
    end
  end
end
