class ChangeEndTimetoTime < ActiveRecord::Migration[6.0]
  def change
    remove_column :performances, :end_time, :date
    add_column :performances, :end_time, :time
  end
end
