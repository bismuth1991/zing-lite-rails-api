require 'rails_helper'

RSpec.describe Song, type: :model do
  it { should belong_to(:artist) }
  it { should belong_to(:album) }

  it { should validate_presence_of(:title) }
end
