class HouseCategory < ApplicationRecord
  belongs_to :category
  belongs_to :house
end
