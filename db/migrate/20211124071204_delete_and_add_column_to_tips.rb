class DeleteAndAddColumnToTips < ActiveRecord::Migration[6.0]
  def change
    remove_column :tips, :amount, :integer
    add_monetize :tips, :amount, currency: { present: false }
  end
end
