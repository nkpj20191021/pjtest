class Watch < ApplicationRecord    belongs_to :event
    belongs_to :user
    belongs_to :politician
end
