class AddCheckoutSessionToTips < ActiveRecord::Migration[6.0]
  def change
    add_column :tips, :checkout_session_id, :string
  end
end
