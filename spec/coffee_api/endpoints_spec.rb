require 'json'

require 'spec_helper'

describe 'HTTP interface' do
  context 'GET /' do
    it 'returns a hello response' do
      get '/'

      expect(last_response).to be_ok
      expect(last_response.body).to match('Welcome to the super-cool coffee API!')
    end
  end

  context 'GET /menu' do
    it 'returns a JSONified list of menu items' do
      get '/menu'

      expect(last_response).to be_ok

      response_object = JSON.parse(last_response.body)
      expect(response_object['coffees'].length).to be > 0
    end
  end
end
