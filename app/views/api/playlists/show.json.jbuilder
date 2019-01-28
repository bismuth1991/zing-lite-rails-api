json.set! @playlist.id do
  json.extract! @playlist, :id, :name, :song_ids, :cover_image_url
end