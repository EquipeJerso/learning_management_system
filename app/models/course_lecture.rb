class CourseLecture < ApplicationRecord
  has_one_attached :video

  belongs_to :course

  CONTENT_TYPE_ENUM = [
    'Texto',
    'Vídeo',
  ]

  validates :content_type,
    presence: true

  validates :name,
    presence: true

end
