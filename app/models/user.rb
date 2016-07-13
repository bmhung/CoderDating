class User < ApplicationRecord
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, format: {with: /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/, message: "is not valid format"}, uniqueness: { case_sensitive: false}
  validates :password, confirmation: true, length: { minimum: 6 }
end
