require 'rails_helper'

RSpec.describe PlaylistSong, type: :model do
  it { should belong_to(:playlist) }
  it { should belong_to(:song) }
end
