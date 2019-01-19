require 'rails_helper'

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
end
