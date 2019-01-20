json.songs do 
  @songs.each do |song|
    json.set! song.id do
      json.id song.id 
      json.title song.title
      json.url song.url 
      json.artist_id song.artist_id
      json.album_id song.album_id
    end
  end
end



