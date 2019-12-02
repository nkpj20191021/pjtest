class AddPoliClaRefToEleHis < ActiveRecord::Migration[5.2]
  def change
    add_reference :election_histories, :politician_classification,  foreign_key: true
  end
end
