require 'rails_helper'

RSpec.describe 'Users API', type: :request do
  describe 'POST #create' do
    context 'with invalid params' do
      it 'validates the presence of the username' do
        post '/api/users', params: {
          user: {
            username: '',
            password: 'password'
          }
        }
        
        expect(response).to have_http_status(422)   
        expect(response.body).to eq("[\"Username can't be blank\"]")
      end

      it 'validates the presence of the password' do
        post '/api/users', params: {
          user: {
            username: 'jack_bruce',
            password: ''
          }
        }
        
        expect(response).to have_http_status(422)   
        expect(response.body).to eq("[\"Password is too short (minimum is 6 characters)\"]")
      end

      it 'validates that the password is at least 6 characters long' do
        post '/api/users', params: {
          user: {
            username: 'jack_bruce',
            password: 'short'
          }
        }

        expect(response).to have_http_status(422)   
        expect(response.body).to eq("[\"Password is too short (minimum is 6 characters)\"]")
      end
    end

    context 'with valid params' do
      before(:each) do 
        post '/api/users', params: {
          user: {
            username: 'jack_bruce',
            password: 'password'
          }
        }
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
end