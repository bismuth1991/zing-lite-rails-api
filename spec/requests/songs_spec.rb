require 'rails_helper'

RSpec.describe 'Songs API', type: :request do
  describe 'GET /songs' do
    before(:each) do 
      artists = create_list(:artist, 5)
      albums = create_list(:album, 5)

      artist_ids = artists.map { |artist| artist.id }
      album_ids = albums.map { |album| album.id }

      30.times { create(:song, artist_id: artist_ids.sample, album_id: album_ids.sample) }
      
      get '/api/songs/'
    end

    it 'returns status code of 200' do
      expect(response).to have_http_status(200)
    end

    it 'only fetches 20 songs' do 
      num_songs = JSON.parse(response.body)['songs'].values.length
      expect(num_songs).to eq(20) 
    end

    it 'fetches songs with corresponding artists and albums' do 
      expect(response.body).to match_response_schema('all_songs')
    end

    it 'fetches each song in the correct format' do
      JSON.parse(response.body)['songs'].values.each do |song|
        expect(song).to match_response_schema('song')
      end
    end

    it 'fetches each artist in the correct format' do
      JSON.parse(response.body)['artists'].values.each do |artist|
        expect(artist).to match_response_schema('artist')
      end
    end

    it 'fetches each album in the correct format' do
      JSON.parse(response.body)['albums'].values.each do |album|
        expect(album).to match_response_schema('album')
      end
    end
  end
end