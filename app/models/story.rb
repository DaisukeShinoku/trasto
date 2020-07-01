class Story < ApplicationRecord
  mount_uploader :story_image, StoryImageUploader

  belongs_to :user
  belongs_to :house

  has_many :story_comments, dependent: :destroy
  has_many :story_bookmarks, dependent: :destroy

  validates :title, presence: true, length: {maximum: 50}
  validates :visit_date, presence: true
  validates :content, length: {maximum: 3000}
end
