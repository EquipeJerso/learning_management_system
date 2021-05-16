class Course < ApplicationRecord
  acts_as_commontable dependent: :destroy

  has_one_attached :cover_picture

  has_many :course_lecture
  has_many :user_course
  belongs_to :course_category

  validates :name,
    presence: true,
    length: { minimum: 3, maximum: 45 }

  validates :description,
    presence: true
end
