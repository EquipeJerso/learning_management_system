class Course < ApplicationRecord
  has_one_attached :cover_picture

  has_many :course_lecture
  belongs_to :course_category

  validates :name,
    presence: true,
    length: { minimum: 3, maximum: 45 }

  validates :description,
    presence: true
end
