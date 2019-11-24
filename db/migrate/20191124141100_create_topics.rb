class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :topic
      t.string :explanation
      t.string :topic_image_id

      t.timestamps
    end
  end
end
