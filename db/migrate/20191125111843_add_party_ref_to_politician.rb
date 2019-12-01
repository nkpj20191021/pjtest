class AddPartyRefToPolitician < ActiveRecord::Migration[5.2]
  def change
    add_reference :politician, :party, foreign_key: true
  end
end
