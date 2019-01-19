class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.string :cover_image_url, null: false

      t.timestamps
    end

    add_index :albums, :name
  end
end
