class AddSongstoPerformances < ActiveRecord::Migration[6.0]
  def change
    add_column :performances, :songs, :text, array: true, default: []
  end
end
