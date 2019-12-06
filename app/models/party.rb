class Party < ApplicationRecord
    has_many :politicians
    has_many :election_histories

end
