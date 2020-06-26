class Story < ApplicationRecord
  mount_uploader :story_image, StoryImageUploader

  belongs_to :user
  belongs_to :house

  validates :title, presence: true, length: {maximum: 50}
  validates :visit_date, presence: true
  validates :content, length: {maximum: 3000}
end
