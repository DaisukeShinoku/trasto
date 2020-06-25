class House < ApplicationRecord
  mount_uploader :house_image, HouseImageUploader

  has_many :house_categories
  has_many :categories, through: :house_categories

  with_options presence: true do
    validates :name
    validates :postcode
    validates :prefecture_code
    validates :address
    validates :domitory_price    
    validates :private_price
  end

  include JpPrefecture
  jp_prefecture :prefecture_code

  def fulladdress
    self.prefecture.name + self.address
  end
end
