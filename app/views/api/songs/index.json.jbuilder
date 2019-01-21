json.songs do 
  @songs.each do |song|
    json.set! song.id do
      json.extract! song, :id, :title, :url
      json.artistId song.artist_id
      json.albumId song.album_id
    end
  end
end

json.artists do 
  @artists.each do |artist|
    json.set! artist.id do 
      json.extract! artist, :id, :name
      json.avatarUrl artist.avatar_url
    end
  end
end

json.albums do 
  @albums.each do |album|
    json.set! album.id do 
      json.extract! album, :id, :name 
      json.coverImageUrl album.cover_image_url
    end
  end
end



