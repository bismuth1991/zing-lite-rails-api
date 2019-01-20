require 'rails_helper'

RSpec.describe 'Session API', type: :request do
  let!(:user) { User.create({ username: 'jack_bruce', password: 'abcdef' }) }

  let(:valid_credentials) do 
    {
      user: {
        username: user.username,
        password: user.password
      }
    }
  end

  let(:invalid_credentials) do 
    {
      user: {
        username: Faker::Internet.username,
        password: Faker::Internet.password
      }
    }
  end

  describe 'POST #create' do
    context 'with invalid credentials' do
      before(:each) { post '/api/session/', { params: invalid_credentials } } 

      it 'responses with status code of 401' do
        expect(response).to have_http_status(401)   
      end

      it 'responses with an errors' do
        expect(response.body).to eq("[\"Invalid credentials\"]")
      end
    end

    context 'with valid credentials' do
      before(:each) { post '/api/session/', { params: valid_credentials } } 

      it 'responses with status code of 200' do
        expect(response).to have_http_status(200)   
      end

      it 'returns the user' do
        expect(response.body).to match_response_schema('user')
      end

      it 'logs in the user' do
        user = User.find_by_username('jack_bruce')
        expect(session[:session_token]).to eq(user.session_token)
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'does not work in request spec, please checkout controller spec instead!'
  end
end