class AddUserIdToArtists < ActiveRecord::Migration[6.0]
  def change
    add_reference :artists, :user, null: false, foreign_key: true
  end
end
