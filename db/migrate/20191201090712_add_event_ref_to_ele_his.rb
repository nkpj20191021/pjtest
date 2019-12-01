class AddEventRefToEleHis < ActiveRecord::Migration[5.2]
  def change
    add_reference :election_histories, :evenet, foreign_key: true
  end
end
