class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  before_save { self.email = email.downcase }
  VALID_ACCOUNT_REGEX =/^[0-9a-z_]{1,15}$/i
  validates :account_name, presence: true, length: {maximum: 15},format: { with: VALID_ACCOUNT_REGEX }, uniqueness: true
  validates :display_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 },format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
