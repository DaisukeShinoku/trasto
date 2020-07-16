class StoryComment < ApplicationRecord
  belongs_to :user
  belongs_to :story
  validates :content, presence: true, length: {maximum: 140}
end
