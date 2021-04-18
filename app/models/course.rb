class Course < ApplicationRecord
  has_one_attached :cover_picture

  validates :name,
    presence: true,
    length: { minimum: 3, maximum: 15 }

  validates :description,
    presence: true
end
