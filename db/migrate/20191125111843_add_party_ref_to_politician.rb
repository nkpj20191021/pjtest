class AddPartyRefToPolitician < ActiveRecord::Migration[5.2]
  def change
    add_reference :politicians, :party, foreign_key: true
  end
end
