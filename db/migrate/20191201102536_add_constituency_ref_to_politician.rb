class AddConstituencyRefToPolitician < ActiveRecord::Migration[5.2]
  def change
    add_reference :Constituencies, :politician, foreign_key: true
  end
end
