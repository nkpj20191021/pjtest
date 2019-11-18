class AddSomethingsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_name, :string, default: "", null: false
    add_column :users, :first_name, :string, default: "", null: false
    add_column :users, :last_name_kana, :string, default: "", null: false
    add_column :users, :first_name_kana, :string, default: "", null: false
    add_column :users, :age, :integer
    add_column :users, :favo_party_id, :integer
  end
end
