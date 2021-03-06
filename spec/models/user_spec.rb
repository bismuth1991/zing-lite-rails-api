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

  describe 'session token' do
    it 'assigns a session_token if one is not given' do
      chuck = User.create(username: 'chuck_norris', password: 'password')
      expect(chuck.session_token).not_to be_nil
    end
  end

  describe 'username validations' do
    subject { User.create(username: 'chuck_norris', password: 'password') }

    it { should validate_presence_of(:username) }
    it { should validate_uniqueness_of(:username) }
  end

  describe 'password validations' do
    it { should validate_length_of(:password).is_at_least(6) }
    it { should validate_presence_of(:password_digest) }
  end
end
