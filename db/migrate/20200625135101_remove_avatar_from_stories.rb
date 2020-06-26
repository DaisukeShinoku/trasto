class RemoveAvatarFromStories < ActiveRecord::Migration[6.0]
  def change
    remove_column :stories, :avatar, :string
  end
end
