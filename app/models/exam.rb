class Exam < ApplicationRecord
    belongs_to :exam
    has_many :reserves
    has_one_attached :exam_image
end
