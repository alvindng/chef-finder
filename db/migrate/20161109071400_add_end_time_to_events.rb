class AddEndTimeToEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :time, :time
    add_column :events, :start_time, :time
    add_column :events, :end_time, :time
  end
end
