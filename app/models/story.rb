class Story < ApplicationRecord
  belongs_to :user
  belongs_to :house
  mount_uploader :avatar, AvatarUploader
end
