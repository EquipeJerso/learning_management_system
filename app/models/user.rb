class User < ApplicationRecord
  ROLES = %w[admin user]

  has_many :user_course

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
