require 'rails_helper'

RSpec.describe PlaylistSong, type: :model do
  it { should belong_to(:playlist) }
  it { should belong_to(:song) }

  describe 'uniqueness validation do' 
    let(:huong_tram) { Artist.create(name: 'Huong Tram', avatar_url: 'huongtram_url') }
    let(:em_gai_mua) { Album.create(name: 'Em Gai Mua', cover_img_url: 'emgaimua_url') }
    subject { Song.create( title: 'Em Gai Mua', artist_id: huong_tram.id, album_id: em_gai_mua.id, url: 'song_url') }

    it { should validate_uniqueness_of(:song).scoped_to(:playlist) }
  end
end
