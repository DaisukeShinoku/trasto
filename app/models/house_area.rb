class HouseArea < ApplicationRecord
  has_many :houses, dependent: :destroy

  validates :name, presence: true
end
