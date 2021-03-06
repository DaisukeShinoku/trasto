class House < ApplicationRecord
  mount_uploader :house_image, HouseImageUploader
  mount_uploaders :images, ImagesUploader

  has_many :house_categories, dependent: :destroy
  has_many :house_comments, dependent: :destroy
  has_many :stories, dependent: :destroy
  has_many :categories, through: :house_categories
  has_many :bookmarks, dependent: :destroy
  has_many :to_go_lists, dependent: :destroy

  belongs_to :house_area

  with_options presence: true do
    validates :name
    validates :postcode
    validates :prefecture_code
    validates :address
  end

  include JpPrefecture
  jp_prefecture :prefecture_code

  def fulladdress
    self.prefecture.name + self.address
  end

  # お気に入り判定 → view側で呼び出し
  def bookmark_by?(user)
    bookmarks.where(user_id: user.id).exists?
  end

  # 行きたい！判定 → view側で呼び出し
  def listed_by?(user)
    to_go_lists.where(user_id: user.id).exists?
  end
end
