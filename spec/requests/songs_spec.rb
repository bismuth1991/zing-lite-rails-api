require 'rails_helper'

RSpec.describe 'Songs API', type: :request do
  describe 'GET /songs' do
    before { get '/api/songs' }

    it 'returns status code of 200' do 
      expect(response).to have_http_status(200)
    end

    it 'fetches songs with corresponding artists and albums' do 
      expect(response).to match_response_schema('all_songs')
    end

    # it 'fetches each song in the correct format' do
    #   JSON.parse(response.body)['songs'].values.each do |song|
    #     expect(song).to match_response_schema('song')
    #   end
    # end

    # it 'fetches each artist in the correct format' do
    #   JSON.parse(response.body)['artists'].values.each do |artist|
    #     expect(artist).to match_response_schema('artist')
    #   end
    # end

    # it 'fetches each album in the correct format' do
    #   JSON.parse(response.body)['albums'].values.each do |album|
    #     expect(albums).to match_response_schema('album')
    #   end
    # end
  end
end