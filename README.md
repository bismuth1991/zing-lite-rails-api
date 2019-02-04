# Rails JSON API

A standalone Rails/PostgreSQL back-end server which:
  + Serves JSON music data to my front-end music web application `Zing Lite` - [live](https://bismuth1991.github.io/zing-lite/) - [github](https://github.com/bismuth1991/zing-lite)
  + Has a full User Authentication cycle with proper secured password (via BCrypt); selective CORS management; Rails' session token stored in database, and CSRF Token served to front-end
 

# Features:

## Test-driven-development, models and controller tests with RSpec:

```ruby
RSpec.describe User, type: :model do
  describe 'password encryption' do
    it 'does not save passwords to the database' do
      User.create!(username: 'chuck_norris', password: 'password')
      user = User.find_by_username('chuck_norris')
      expect(user.password).not_to be('password')
    end

    it 'encrypts the password using BCrypt' do
      expect(BCrypt::Password).to receive(:create)
      User.new(username: 'chuck_norris', password: 'password')
    end
  end
# ...
end
```
```ruby
RSpec.describe 'Songs API', type: :request do
  describe 'GET #index' do
    before(:each) do 
      # ...
      get '/api/songs/'
    end

    it 'responses with status code of 200' do
      expect(response).to have_http_status(200)
    end

    it 'fetches songs with corresponding artists and albums' do 
      expect(response.body).to match_response_schema('all_songs')
    end
    # ...
  end
end
```

## Avoid N + 1 queries while fectching complicated JSON data for front-end

```json
// Required JSON data

{
  "type": "object",
  "required": [
    "songs",
    "artists",
    "albums"
  ],
  "properties": {
    "songs": { "type": "object" },
    "artists": { "type": "object" },
    "albums": { "type": "object" }
  }
}

{
  "type": "object",
  "required": [
    "id",
    "title",
    "url",
    "artistId",
    "albumId"
  ],
  "properties": {
    "id": { "type": "integer" },
    "title": { "type": "string" },
    "url": { "type": "string" },
    "artistId": { "type": "integer" },
    "albumId": { "type": "integer" }
  }
}

{
  "type": "object",
  "required": [
    "id",
    "name",
    "avatarUrl"
  ],
  "properties": {
    "id": { "type": "integer" },
    "name": { "type": "string" },
    "avatarUrl": { "type": "string" }
  }
}

{
  "type": "object",
  "required": [
    "id",
    "name",
    "coverImageUrl"
  ],
  "properties": {
    "id": { "type": "integer" },
    "name": { "type": "string" },
    "coverImageUrl": { "type": "string" }
  }
}
```

```ruby
# ActiveRecords' query

class Api::SongsController < ApplicationController
  def index 
    @songs = Song.includes(:artist, :album).limit(20).offset(params[:off_set]).order(:id)

    artist_set = Set.new
    album_set = Set.new

    @songs.each do |song|
      artist_set.add(song.artist)
      album_set.add(song.album)
    end

    @artists = artist_set.to_a
    @albums = album_set.to_a

    render :index
  end
end
```

## Normalized schemas:

### `users`
column name       |  data type  |       details
------------------|-------------|-----------------
`id`              | integer     | primary key, not null
`email`           | string      | not null, unique, indexed 
`password_digest` | string      | not null
`session_token`   | string      | not null, unique, indexed
`created_at`      | datetime    | not null
`updated_at`      | datetime    | not null

## `songs`
column name   |   data type   |   details
--------------|---------------|-----------------
`id`          | integer       | primary key, not null
`title`       | string        | not null, indexed 
`url`         | string        | not null
`album_id`    | integer       | indexed, foreign key
`artist_id`   | integer       | indexed, foreign key
`created_at`  | datetime      | not null
`updated_at`  | datetime      | not null

## `artists`
column name   |   data type   |   details
--------------|---------------|-----------------
`id`          | integer       | primary key, not null 
`name`        | string        | not null, indexed 
`avatar_url`  | string        | not null
`created_at`  | datetime      | not null
`updated_at`  | datetime      | not null

## `albums`
column name      |      data type   |   details
-----------------|------------------|-----------------
`id`             | integer          | primary key, not null
`name`           | string           | not null, indexed 
`cover_image_url`| string           | not null
`created_at`     | datetime         | not null
`updated_at`     | datetime         | not null

## `playlists`
column name   |   data type   |   details
--------------|---------------|-----------------
`id`          | integer       | primary key, not null
`name`        | string        | not null, unique, indexed 
`created_at`  | datetime      | not null
`updated_at`  | datetime      | not null

## `song_playlists`
column name   |   data type   |   details
--------------|---------------|-----------------
`id`          | integer       | primary key, not null 
`song_id`     | integer       | foreign key, not null, indexed 
`playlist_id` | integer       | foreign key, not null, indexed
`created_at`  | datetime      | not null
`updated_at`  | datetime      | not null
+ indexed on `[:song_id, :playlist_id], unique: true`