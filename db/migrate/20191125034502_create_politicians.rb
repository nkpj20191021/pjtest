class CreatePoliticians < ActiveRecord::Migration[5.2]
  def change
    create_table :politicians do |t|
      t.integer :constituency_id
      t.integer :party_id
      t.integer :politician_classifications_id
      t.string :first_name
      t.string :last_name
      t.string :first_name_kana
      t.string :last_name_kana

      t.timestamps
    end
  end
end
