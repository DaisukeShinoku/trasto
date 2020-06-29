class Category < ApplicationRecord
  has_many :house_categories
  has_many :houses, through: :house_categories
  # accepts_nested_attributes_for :house_categories

  validates :name, presence:true, length: {maximum: 15}
  validates :is_valid, inclusion: { in: [true, false] }
end
