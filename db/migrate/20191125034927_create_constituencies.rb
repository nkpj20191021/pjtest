class CreateConstituencies < ActiveRecord::Migration[5.2]
  def change
    create_table :constituencies do |t|
      t.integer :postalcode
      t.string :constituency

      t.timestamps
    end
  end
end
