class House < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
end
