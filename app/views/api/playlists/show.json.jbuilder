json.set! @playlist.id do
  json.extract! @playlist, :id, :name, :song_ids
end