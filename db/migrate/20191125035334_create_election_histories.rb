class CreateElectionHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :election_histories do |t|
      t.integer :politician_id
      t.integer :party_id
      t.integer :politician_classifications_id
      t.datetime :start
      t.datetime :end
      t.integer :votes_cast

      t.timestamps
    end
  end
end
