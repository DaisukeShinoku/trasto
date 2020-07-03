class TweetComment < ApplicationRecord
  belongs_to :user
  belongs_to :tweet
  validates :user_id, presence: true
  validates :tweet_id, presence: true
  validates :content, presence: true, length: {maximum: 140}
end
