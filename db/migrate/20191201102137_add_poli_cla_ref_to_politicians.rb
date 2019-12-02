class AddPoliClaRefToPoliticians < ActiveRecord::Migration[5.2]
  def change
    add_reference :politician_classifications, :evenet, foreign_key: true
  end
end
