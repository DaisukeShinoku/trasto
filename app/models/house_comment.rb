class HouseComment < ApplicationRecord
  belongs_to :user
  belongs_to :house
  validates :content, presence: true, length: {maximum: 140}
end
