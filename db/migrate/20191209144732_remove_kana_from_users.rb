class RemoveKanaFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :last_name_kana, :string
    remove_column :users, :first_name_kana, :string
  end
end
