class PoliticianClassification < ApplicationRecord
    has_many :election_histories
    has_many :politicians
end
