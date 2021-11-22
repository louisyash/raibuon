class CreatePerformances < ActiveRecord::Migration[6.0]
  def change
    create_table :performances do |t|
      t.string :name
      t.string :description
      t.string :address
      t.float :longitude
      t.float :latitude
      t.date :start_time
      t.date :end_time
      t.references :artist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
