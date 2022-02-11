class Restaurant < ApplicationRecord
    belongs_to :user
    has_many :restanrant
    has_one_attached :restaurant_image
end
