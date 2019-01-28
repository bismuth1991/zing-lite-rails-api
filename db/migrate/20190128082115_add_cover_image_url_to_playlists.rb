class AddCoverImageUrlToPlaylists < ActiveRecord::Migration[5.2]
  def change
    add_column :playlists, :cover_image_url, :string, null: false
  end
end
