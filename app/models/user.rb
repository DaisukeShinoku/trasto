class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  attr_accessor :remember_token

  before_save { self.email = email.downcase }
  VALID_ACCOUNT_REGEX = /\A[0-9a-z_]{1,15}\z/i
  validates :account_name, presence: true, length: {maximum: 15}, format: { with: VALID_ACCOUNT_REGEX }, uniqueness: true
  validates :display_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true

  has_many :stories, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :to_go_lists, dependent: :destroy

  # 渡された文字列のハッシュ値を返す
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                    BCrypt::Engine.cost
     BCrypt::Password.create(string, cost: cost)
    end
  
  # ランダムなトークンを返す
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  # 永続セッションのためにユーザーをデータベースに記憶する
  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
  # 渡されたトークンがダイジェストと一致したらtrueを返す
  def authenticated?(remember_token)
    return false if remember_digest.nil?
    BCrypt::Password.new(remember_digest).is_password?(remember_token)
  end

  # ユーザーのログイン情報を破棄する
  def forget
    update_attribute(:remember_digest, nil)
  end
end
