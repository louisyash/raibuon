class CreateTips < ActiveRecord::Migration[6.0]
  def change
    create_table :tips do |t|
      t.integer :amount
      t.string :state
      t.references :user, null: false, foreign_key: true
      t.references :performance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
