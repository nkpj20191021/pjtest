class CreatePoliticianClassifications < ActiveRecord::Migration[5.2]
  def change
    create_table :politician_classifications do |t|
      t.string :name

      t.timestamps
    end
  end
end
