class AddUsernametoUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :text, null: false
  end
end
