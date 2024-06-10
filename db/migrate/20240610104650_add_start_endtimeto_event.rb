class AddStartEndtimetoEvent < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :start_time, :date_time, null: false
    add_column :events, :end_time, :date_time, null: false
    add_column :events, :event_date, :date, null: false
  end
end
