class AddEventRefToEleHis < ActiveRecord::Migration[5.2]
  def change
    add_reference :election_histories, :event, foreign_key: true
  end
end
