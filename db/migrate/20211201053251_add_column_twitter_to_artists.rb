class AddColumnTwitterToArtists < ActiveRecord::Migration[6.0]
  def change
    add_column :artists, :twitter, :string
  end
end
