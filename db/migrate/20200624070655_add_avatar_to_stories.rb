class AddAvatarToStories < ActiveRecord::Migration[6.0]
  def change
    add_column :stories, :avatar, :string
  end
end
