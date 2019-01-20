require 'rails_helper'

RSpec.describe Api::SessionsController, type: :controller do
  let!(:user) { User.create({ username: 'jack_bruce', password: 'abcdef' }) }

  let(:valid_credentials) do 
    {
      user: {
        username: user.username,
        password: user.password
      }
    }
  end

  describe 'DELETE #destroy' do
    before(:each) do
      post :create, { params: valid_credentials, format: :json }
      @session_token = User.find_by_username('jack_bruce').session_token
    end

    it 'logs out the current user' do
      delete :destroy
      expect(session[:session_token]).to be_nil

      jack = User.find_by_username('jack_bruce')
      expect(jack.session_token).not_to eq(@session_token)
    end
  end
end
