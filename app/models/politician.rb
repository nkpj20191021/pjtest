class Politician < ApplicationRecord
    belongs_to :constituency
    belongs_to :politician_classification
    belongs_to :party
end
