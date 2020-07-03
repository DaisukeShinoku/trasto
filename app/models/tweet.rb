class Tweet < ApplicationRecord
  mount_uploader :tweet_picture, TweetPictureUploader

  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :tweet_comments, dependent: :destroy

  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :content, presence: true, length: {maximum: 140}
  validate  :tweet_picture_size

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  private

    # アップロードされた画像のサイズをバリデーションする
    def tweet_picture_size
      if tweet_picture.size > 5.megabytes
        errors.add(:tweet_picture, "5MBを超えるファイルはアップロードできません")
      end
    end
end
