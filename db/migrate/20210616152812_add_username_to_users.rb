class AddUsernameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string, limit: 20
    add_column :users, :last_name, :string, limit: 20
    add_column :users, :username, :string, limit: 20
  end
end
