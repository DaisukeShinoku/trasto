class AddStoryImageToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :story_image, :string
  end
end
