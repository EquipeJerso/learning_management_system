# frozen_string_literal: true

class User < ApplicationRecord
  acts_as_commontator

  ROLES = %w[admin user].freeze

  has_many :user_course

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
