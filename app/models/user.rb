class User < ApplicationRecord
  ROLES = %w[admin user]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
