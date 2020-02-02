class Topic < ApplicationRecord
    has_many :posts
    belongs_to :user
    belongs_to :category

    attachment :topic_image
end
