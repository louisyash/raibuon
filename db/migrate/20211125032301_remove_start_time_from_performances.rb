class RemoveStartTimeFromPerformances < ActiveRecord::Migration[6.0]
  def change
    remove_column :performances, :start_time, :date
    add_column :performances, :start_time, :time
    add_column :performances, :performance_date, :date
  end
end
