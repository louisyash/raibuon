class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :description
      t.string :facebook
      t.string :instagram
      t.string :soundcloud
      t.string :spotify

      t.timestamps
    end
  end
end
