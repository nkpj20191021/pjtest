class CreateWatches < ActiveRecord::Migration[5.2]
  def change
    create_table :watches do |t|
      t.integer :user_id
      t.integer :politician_id

      t.timestamps
    end
  end
end
