class CreateEventUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :event_users do |t|
      t.references :user, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.datetime :joined_at, default: -> { 'CURRENT_TIMESTAMP' }

      t.timestamps
    end
    add_index :event_users, [:user_id, :event_id], unique: true
  end
end