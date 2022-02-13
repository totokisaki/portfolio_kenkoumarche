class Restaurant < ApplicationRecord
    belongs_to :user
    has_many :mouths
    has_one_attached :store_image
end
