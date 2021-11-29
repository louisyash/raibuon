class AddAvatarIdToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :avatar_id, :string
  end
end
