require 'rails_helper'

RSpec.describe Song, type: :model do
  it { should belong_to(:artist) }
  it { should belong_to(:album) }

  it { should have_many(:playlists) }

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:url) }
end
