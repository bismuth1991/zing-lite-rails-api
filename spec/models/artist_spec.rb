require 'rails_helper'

RSpec.describe Artist, type: :model do
  # it { should have_many(:songs) }
  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:avatar_url) }
end
