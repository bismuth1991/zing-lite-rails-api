require 'rails_helper'

RSpec.describe 'Songs API', type: :request do
  describe 'GET /songs' do
    before { get '/songs' }

    it 'returns status code of 200' do 
      expect(response).to have_http_status(200)
    end

    it 'fetches songs with corresponding artists and albums' do 
      expect(response).to match_response_schema("all_songs")
    end

    it 'fetches each song in the correct format' do
      expect(response).to match_response_schema('song')
    end

    it 'fetches each artist in the correct format' do
      expect(response).to match_response_schema('artist')
    end

    it 'fetches each album in the correct format' do
      expect(response).to match_response_schema('album')
    end
  end
end