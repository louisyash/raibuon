class AddAndRemoveColumnsToPerformances < ActiveRecord::Migration[6.0]
  def change
    remove_column :performances, :start_time, :time
    remove_column :performances, :end_time, :time
    remove_column :performances, :performance_date, :date
    add_column :performances, :start_time, :datetime
    add_column :performances, :end_time, :datetime
  end
end
