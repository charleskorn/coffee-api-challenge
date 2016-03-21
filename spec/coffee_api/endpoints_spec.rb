require 'json'

require 'spec_helper'

describe 'Smoke test: HTTP endpoints' do
  context 'GET /' do
    it 'returns a hello response' do
      get '/'

      expect(last_response).to be_ok
      expect(last_response.body).to eq('Welcome to the super-cool coffee API!')
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

  context 'GET /order/:id' do
    it 'returns the order status' do
      get '/order/123'

      expect(last_response).to be_ok

      response_object = JSON.parse(last_response.body)
      expect(response_object['status']).to eq('READY')
    end
  end
end
