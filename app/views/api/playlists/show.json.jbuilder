json.set! @playlist.id do
  @playlist.extract! :id, :name
  json.songIds @song_ids
end