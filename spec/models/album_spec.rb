require 'rails_helper'

RSpec.describe Album, type: :model do
  it { should have_many(:songs) }
  
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:cover_image_url) }
end
