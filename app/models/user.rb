class User < ApplicationRecord
  # VALID_NAME_REGEX = /\A[a-zA-Z-_]+\z/
  # validates :name, presence: true, length: { minimum: 2, maximum: 15 }, uniqueness: { case_sensitive: true }, format: { with: VALID_NAME_REGEX }
  # validates :email, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
  # has_secure_password
  # validates :password, presence: true, length: { minimum: 4 }

  before_save { self.email = email.downcase }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
