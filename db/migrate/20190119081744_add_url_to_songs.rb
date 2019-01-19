class AddUrlToSongs < ActiveRecord::Migration[5.2]
  def change
    add_column :songs, :url, :string
  end
end
