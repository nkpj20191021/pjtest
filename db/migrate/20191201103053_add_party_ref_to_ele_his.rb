class AddPartyRefToEleHis < ActiveRecord::Migration[5.2]
  def change
    add_reference :election_histories, :party, foreign_key: true
  end
end
