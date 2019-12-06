class CreateElectionHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :election_histories do |t|
      t.datetime :start
      t.datetime :end
      t.integer :votes_cast

      t.timestamps
    end
  end
end
