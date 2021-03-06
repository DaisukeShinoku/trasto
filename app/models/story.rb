class Story < ApplicationRecord
  mount_uploader :story_image, StoryImageUploader
  mount_uploaders :images, ImagesUploader

  belongs_to :user
  belongs_to :house

  has_many :story_comments, dependent: :destroy
  has_many :story_bookmarks, dependent: :destroy

  validates :title, presence: true, length: {maximum: 25}
  validates :visit_date, presence: true
  validates :content, length: {maximum: 3000}

  # お気に入りストーリー判定 → view側で呼び出し
  def story_bookmark_by?(user)
    story_bookmarks.where(user_id: user.id).exists?
  end
end
