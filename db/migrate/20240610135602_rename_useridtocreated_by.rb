class RenameUseridtocreatedBy < ActiveRecord::Migration[7.0]
  def change
    change_column :events, :start_time, :datetime, null: false
    change_column :events, :end_time, :datetime, null: false
    change_column :events, :event_date, :datetime, null: false
  end
end
