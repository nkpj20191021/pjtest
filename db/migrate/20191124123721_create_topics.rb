class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :topic
      t.string :explanation
      t.string :topic_image_id

      t.timestamps
    end
  end
end
