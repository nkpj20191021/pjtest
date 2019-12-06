class ElectionHistory < ApplicationRecord
    belongs_to :event
    belongs_to :party
    belongs_to :politician_classification
end
